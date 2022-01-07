
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;
typedef struct TYPE_18__ TYPE_14__ ;


typedef TYPE_3__* Tree ;
struct TYPE_22__ {int name; } ;
struct TYPE_21__ {int type; } ;
struct TYPE_19__ {int loc; } ;
struct TYPE_20__ {TYPE_1__ c; } ;
struct TYPE_18__ {TYPE_2__ u; } ;
typedef int Symbol ;


 int OR ;
 int REGISTER ;
 int RIGHT ;
 TYPE_4__* YYnull ;
 int asgn (int ,int ) ;
 int cast (TYPE_3__*,int ) ;
 int cnsttree (int ,long) ;
 TYPE_3__* cond (int ) ;
 scalar_t__* file ;
 int idtree (int ) ;
 int inttype ;
 scalar_t__ isptr (int ) ;
 scalar_t__ lineno ;
 TYPE_14__* mkstr (scalar_t__*) ;
 int needconst ;
 TYPE_3__* nullcall (int ,TYPE_4__*,TYPE_3__*,int ) ;
 int pointer (int ) ;
 scalar_t__ strcmp (int ,char*) ;
 int temporary (int ,int ) ;
 TYPE_3__* tree (int ,int ,TYPE_3__*,int ) ;
 TYPE_3__* value (TYPE_3__*) ;
 int vcall (TYPE_4__*,int ,int ,int ,int *) ;
 int voidptype ;
 int voidtype ;

__attribute__((used)) static Tree nullcheck(Tree p) {
 if (!needconst && YYnull && isptr(p->type)) {
  p = value(p);
  if (strcmp(YYnull->name, "_YYnull") == 0) {
   Symbol t1 = temporary(REGISTER, voidptype);
   p = tree(RIGHT, p->type,
    tree(OR, voidtype,
     cond(asgn(t1, cast(p, voidptype))),
     vcall(YYnull, voidtype, (file && *file ? pointer(idtree(mkstr(file)->u.c.loc)) : cnsttree(voidptype, ((void*)0))), cnsttree(inttype, (long)lineno) , ((void*)0))),
    idtree(t1));
  }

  else
   p = nullcall(p->type, YYnull, p, cnsttree(inttype, 0L));

 }
 return p;
}
