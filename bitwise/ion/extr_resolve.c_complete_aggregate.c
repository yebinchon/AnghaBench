
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {TYPE_1__* sym; } ;
typedef TYPE_2__ Type ;
struct TYPE_7__ {int decl; } ;
typedef int Aggregate ;


 TYPE_2__* complete_aggregate_strict (TYPE_2__*,int *,int) ;
 scalar_t__ is_decl_foreign (int ) ;

Type *complete_aggregate(Type *type, Aggregate *aggregate) {
    return complete_aggregate_strict(type, aggregate, type->sym && is_decl_foreign(type->sym->decl));
}
