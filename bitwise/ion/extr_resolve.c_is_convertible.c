
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_5__ ;
typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;


struct TYPE_21__ {TYPE_2__* fields; } ;
struct TYPE_19__ {scalar_t__ intrinsic; } ;
struct TYPE_22__ {struct TYPE_22__* base; TYPE_3__ aggregate; TYPE_1__ func; } ;
typedef TYPE_4__ Type ;
struct TYPE_23__ {TYPE_4__* type; } ;
struct TYPE_20__ {TYPE_4__* type; } ;
typedef TYPE_5__ Operand ;


 scalar_t__ is_aggregate_type (TYPE_4__*) ;
 scalar_t__ is_arithmetic_type (TYPE_4__*) ;
 scalar_t__ is_const_type (TYPE_4__*) ;
 scalar_t__ is_func_type (TYPE_4__*) ;
 scalar_t__ is_null_ptr (TYPE_5__) ;
 scalar_t__ is_ptr_like_type (TYPE_4__*) ;
 scalar_t__ is_ptr_type (TYPE_4__*) ;
 TYPE_4__* type_any ;
 TYPE_4__* type_void ;
 TYPE_4__* unqualify_type (TYPE_4__*) ;

bool is_convertible(Operand *operand, Type *dest) {
    dest = unqualify_type(dest);
    Type *src = unqualify_type(operand->type);
    if (dest == src) {
        return 1;
    } else if (is_func_type(src) && src->func.intrinsic) {
        return 0;
    } else if (dest == type_any || dest == type_void) {
        return 1;
    } else if (is_arithmetic_type(dest) && is_arithmetic_type(src)) {
        return 1;
    } else if (is_ptr_like_type(dest) && is_null_ptr(*operand)) {
        return 1;
    } else if (is_ptr_type(dest) && is_ptr_type(src)) {
        if (is_const_type(dest->base) && is_const_type(src->base)) {
            return dest->base->base == src->base->base || dest->base->base == type_void || src->base->base == type_void;
        } else if (is_aggregate_type(dest->base) && is_aggregate_type(src->base) && dest->base == src->base->aggregate.fields[0].type) {
            return 1;
        } else {
            Type *unqual_dest_base = unqualify_type(dest->base);
            if (unqual_dest_base == src->base) {
                return 1;
            } else if (unqual_dest_base == type_void) {
                return is_const_type(dest->base) || !is_const_type(src->base);
            } else {
                return src->base == type_void;
            }
        }
    } else {
        return 0;
    }
}
