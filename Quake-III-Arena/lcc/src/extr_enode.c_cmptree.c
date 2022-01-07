
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_1__ ;


typedef int Type ;
typedef TYPE_1__* Tree ;
struct TYPE_12__ {int type; } ;


 int binary (int ,int ) ;
 TYPE_1__* cast (TYPE_1__*,int ) ;
 scalar_t__ compatible (int ,int ) ;
 int inttype ;
 scalar_t__ isarith (int ) ;
 int mkop (int,int ) ;
 TYPE_1__* simplify (int ,int ,TYPE_1__*,TYPE_1__*) ;
 int typeerror (int,TYPE_1__*,TYPE_1__*) ;
 int unsignedptr ;
 int unsignedtype ;

__attribute__((used)) static Tree cmptree(int op, Tree l, Tree r) {
 Type ty;

 if (isarith(l->type) && isarith(r->type)) {
  ty = binary(l->type, r->type);
  l = cast(l, ty);
  r = cast(r, ty);
 } else if (compatible(l->type, r->type)) {
  ty = unsignedptr;
  l = cast(l, ty);
  r = cast(r, ty);
 } else {
  ty = unsignedtype;
  typeerror(op, l, r);
 }
 return simplify(mkop(op,ty), inttype, l, r);
}
