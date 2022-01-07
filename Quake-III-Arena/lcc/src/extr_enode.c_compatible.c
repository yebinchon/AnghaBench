
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* Type ;
struct TYPE_5__ {int type; } ;


 scalar_t__ eqtype (int ,int ,int ) ;
 int isfunc (int ) ;
 scalar_t__ isptr (TYPE_1__*) ;
 int unqual (int ) ;

__attribute__((used)) static int compatible(Type ty1, Type ty2) {
 return isptr(ty1) && !isfunc(ty1->type)
     && isptr(ty2) && !isfunc(ty2->type)
     && eqtype(unqual(ty1->type), unqual(ty2->type), 0);
}
