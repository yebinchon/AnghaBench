
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;


typedef TYPE_1__* Type ;
typedef TYPE_2__* Tree ;
struct TYPE_21__ {TYPE_1__* type; } ;
struct TYPE_20__ {int type; } ;


 TYPE_2__* cast (TYPE_2__*,TYPE_1__*) ;
 TYPE_2__* cmptree (int,TYPE_2__*,TYPE_2__*) ;
 scalar_t__ eqtype (int ,int ,int) ;
 int inttype ;
 int isfunc (int ) ;
 scalar_t__ isnullptr (TYPE_2__*) ;
 scalar_t__ isptr (TYPE_1__*) ;
 scalar_t__ isvoidptr (TYPE_1__*) ;
 int mkop (int,TYPE_1__*) ;
 TYPE_2__* simplify (int ,int ,TYPE_2__*,TYPE_2__*) ;
 int unqual (int ) ;
 TYPE_1__* unsignedptr ;

Tree eqtree(int op, Tree l, Tree r) {
 Type xty = l->type, yty = r->type;

 if (isptr(xty) && isnullptr(r)
 || isptr(xty) && !isfunc(xty->type) && isvoidptr(yty)
 || (isptr(xty) && isptr(yty)
     && eqtype(unqual(xty->type), unqual(yty->type), 1))) {
  Type ty = unsignedptr;
  l = cast(l, ty);
  r = cast(r, ty);
  return simplify(mkop(op,ty), inttype, l, r);
 }
 if (isptr(yty) && isnullptr(l)
 || isptr(yty) && !isfunc(yty->type) && isvoidptr(xty))
  return eqtree(op, r, l);
 return cmptree(op, l, r);
}
