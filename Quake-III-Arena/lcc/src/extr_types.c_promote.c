
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


typedef TYPE_1__* Type ;
struct TYPE_9__ {int op; int size; } ;






 TYPE_1__* doubletype ;
 TYPE_1__* inttype ;
 TYPE_1__* unqual (TYPE_1__*) ;
 TYPE_1__* unsignedtype ;

Type promote(Type ty) {
 ty = unqual(ty);
 switch (ty->op) {
 case 131:
  return inttype;
 case 129:
  if (ty->size < inttype->size)
   return inttype;
  break;
 case 128:
  if (ty->size < inttype->size)
   return inttype;
  if (ty->size < unsignedtype->size)
   return unsignedtype;
  break;
 case 130:
  if (ty->size < doubletype->size)
   return doubletype;
 }
 return ty;
}
