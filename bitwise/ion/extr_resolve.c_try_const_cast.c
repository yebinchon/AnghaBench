
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int Type ;
struct TYPE_3__ {int * type; int is_lvalue; } ;
typedef TYPE_1__ Operand ;
typedef int Expr ;


 int set_type_conv (int *,int *) ;
 int * unqualify_ptr_type (int *) ;

void try_const_cast(Operand *operand, Expr *expr) {
    Type *unqual = unqualify_ptr_type(operand->type);
    if (!operand->is_lvalue && unqual != operand->type) {
        set_type_conv(expr, unqual);
        operand->type = unqual;
    }
}
