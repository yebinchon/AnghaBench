
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ kind; int base; } ;
typedef TYPE_1__ Type ;


 scalar_t__ TYPE_ARRAY ;
 TYPE_1__* type_ptr (int ) ;
 TYPE_1__* unqualify_type (TYPE_1__*) ;

Type *type_decay(Type *type) {
    type = unqualify_type(type);
    if (type->kind == TYPE_ARRAY) {
        type = type_ptr(type->base);
    }
    return type;
}
