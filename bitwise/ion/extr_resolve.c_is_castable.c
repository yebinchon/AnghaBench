
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int Type ;
struct TYPE_4__ {int * type; } ;
typedef TYPE_1__ Operand ;


 scalar_t__ is_convertible (TYPE_1__*,int *) ;
 scalar_t__ is_integer_type (int *) ;
 int is_ptr_like_type (int *) ;

bool is_castable(Operand *operand, Type *dest) {
    Type *src = operand->type;
    if (is_convertible(operand, dest)) {
        return 1;
    } else if (is_integer_type(dest)) {
        return is_ptr_like_type(src);
    } else if (is_integer_type(src)) {
        return is_ptr_like_type(dest);
    } else if (is_ptr_like_type(dest) && is_ptr_like_type(src)) {
        return 1;
    } else {
        return 0;
    }
}
