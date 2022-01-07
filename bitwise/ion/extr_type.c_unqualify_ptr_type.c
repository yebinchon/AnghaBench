
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ kind; int base; } ;
typedef TYPE_1__ Type ;


 scalar_t__ TYPE_PTR ;
 TYPE_1__* type_ptr (int ) ;
 int unqualify_type (int ) ;

Type *unqualify_ptr_type(Type *type) {
    if (type->kind == TYPE_PTR) {
        type = type_ptr(unqualify_type(type->base));
    }
    return type;
}
