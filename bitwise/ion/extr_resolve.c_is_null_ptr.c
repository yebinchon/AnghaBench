
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ ull; } ;
struct TYPE_6__ {TYPE_1__ val; int type; scalar_t__ is_const; } ;
typedef TYPE_2__ Operand ;


 int cast_operand (TYPE_2__*,int ) ;
 scalar_t__ is_integer_type (int ) ;
 scalar_t__ is_ptr_type (int ) ;
 int type_ullong ;

bool is_null_ptr(Operand operand) {
    if (operand.is_const && (is_ptr_type(operand.type) || is_integer_type(operand.type))) {
        cast_operand(&operand, type_ullong);
        return operand.val.ull == 0;
    } else {
        return 0;
    }
}
