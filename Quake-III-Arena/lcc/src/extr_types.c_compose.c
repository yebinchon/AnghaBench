
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_3__ ;
typedef struct TYPE_23__ TYPE_2__ ;
typedef struct TYPE_22__ TYPE_1__ ;


typedef TYPE_3__* Type ;
struct TYPE_22__ {int oldstyle; TYPE_3__** proto; } ;
struct TYPE_23__ {TYPE_1__ f; } ;
struct TYPE_24__ {int op; int size; TYPE_2__ u; struct TYPE_24__* type; int align; } ;
typedef int * List ;





 int PERM ;


 int * append (TYPE_3__*,int *) ;
 TYPE_3__* array (TYPE_3__*,int,int ) ;
 int assert (int) ;
 TYPE_3__* func (TYPE_3__*,TYPE_3__**,int) ;
 int isconst (TYPE_3__*) ;
 int isvolatile (TYPE_3__*) ;
 TYPE_3__** ltov (int **,int ) ;
 TYPE_3__* ptr (TYPE_3__*) ;
 TYPE_3__* qual (int const,TYPE_3__*) ;
 TYPE_3__* unqual (TYPE_3__*) ;

Type compose(Type ty1, Type ty2) {
 if (ty1 == ty2)
  return ty1;
 assert(ty1->op == ty2->op);
 switch (ty1->op) {
 case 129:
  return ptr(compose(ty1->type, ty2->type));
 case 131 +128:
  return qual(131, qual(128,
   compose(ty1->type, ty2->type)));
 case 131: case 128:
  return qual(ty1->op, compose(ty1->type, ty2->type));
 case 132: { Type ty = compose(ty1->type, ty2->type);
    if (ty1->size && (ty1->type->size && ty2->size == 0 || ty1->size == ty2->size))
     return array(ty, ty1->size/ty1->type->size, ty1->align);
    if (ty2->size && ty2->type->size && ty1->size == 0)
     return array(ty, ty2->size/ty2->type->size, ty2->align);
    return array(ty, 0, 0); }
 case 130: { Type *p1 = ty1->u.f.proto, *p2 = ty2->u.f.proto;
    Type ty = compose(ty1->type, ty2->type);
    List tlist = ((void*)0);
    if (p1 == ((void*)0) && p2 == ((void*)0))
     return func(ty, ((void*)0), 1);
    if (p1 && p2 == ((void*)0))
     return func(ty, p1, ty1->u.f.oldstyle);
    if (p2 && p1 == ((void*)0))
     return func(ty, p2, ty2->u.f.oldstyle);
    for ( ; *p1 && *p2; p1++, p2++) {
     Type ty = compose(unqual(*p1), unqual(*p2));
     if (isconst(*p1) || isconst(*p2))
      ty = qual(131, ty);
     if (isvolatile(*p1) || isvolatile(*p2))
      ty = qual(128, ty);
     tlist = append(ty, tlist);
    }
    assert(*p1 == ((void*)0) && *p2 == ((void*)0));
    return func(ty, ltov(&tlist, PERM), 0); }
 }
 assert(0); return ((void*)0);
}
