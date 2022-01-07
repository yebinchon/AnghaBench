
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ kind; } ;
typedef TYPE_1__ Type ;


 scalar_t__ TYPE_BOOL ;
 scalar_t__ TYPE_DOUBLE ;

bool is_arithmetic_type(Type *type) {
    return TYPE_BOOL <= type->kind && type->kind <= TYPE_DOUBLE;
}
