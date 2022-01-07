
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ kind; } ;
typedef TYPE_1__ Type ;


 scalar_t__ TYPE_STRUCT ;
 scalar_t__ TYPE_TUPLE ;
 scalar_t__ TYPE_UNION ;

bool is_aggregate_type(Type *type) {
    return type->kind == TYPE_STRUCT || type->kind == TYPE_UNION || type->kind == TYPE_TUPLE;
}
