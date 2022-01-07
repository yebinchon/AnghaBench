
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int base; } ;
typedef TYPE_1__ Type ;
typedef int Expr ;


 scalar_t__ is_ptr_type (TYPE_1__*) ;
 int qualify_type (TYPE_1__*,int ) ;
 int set_pointer_promo_type (int *,int ) ;
 TYPE_1__* type_char ;
 int type_ptr (int ) ;
 TYPE_1__* type_void ;
 TYPE_1__* unqualify_type (int ) ;

bool compatible_pointer_arith(Type *left, Type *right, Expr *left_expr, Expr *right_expr) {
    if (is_ptr_type(left) && is_ptr_type(right)) {
        Type *left_base = unqualify_type(left->base);
        Type *right_base = unqualify_type(right->base);
        if (left_base == right_base) {
            return 1;
        }
        if (left_base == type_void && right_base == type_char) {
            set_pointer_promo_type(left_expr, type_ptr(qualify_type(type_char, left->base)));
            return 1;
        }
        if (left_base == type_char && right_base == type_void) {
            set_pointer_promo_type(right_expr, type_ptr(qualify_type(type_char, right->base)));
            return 1;
        }
    }
    return 0;
}
