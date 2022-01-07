
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ kind; int size; } ;
typedef TYPE_1__ Type ;
typedef int Node ;


 scalar_t__ KIND_FUNC ;
 scalar_t__ KIND_VOID ;
 int assert (int) ;
 int * ast_inttype (int ,int) ;
 TYPE_1__* read_sizeof_operand_sub () ;
 int type_ulong ;

__attribute__((used)) static Node *read_sizeof_operand() {
    Type *ty = read_sizeof_operand_sub();

    int size = (ty->kind == KIND_VOID || ty->kind == KIND_FUNC) ? 1 : ty->size;
    assert(0 <= size);
    return ast_inttype(type_ulong, size);
}
