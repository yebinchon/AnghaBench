
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* Type ;
struct TYPE_6__ {struct TYPE_6__* type; } ;


 int error (char*,char*) ;
 TYPE_1__* inttype ;
 scalar_t__ isfunc (TYPE_1__*) ;

Type freturn(Type ty) {
 if (isfunc(ty))
  return ty->type;
 error("type error: %s\n", "function expected");
 return inttype;
}
