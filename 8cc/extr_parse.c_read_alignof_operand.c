
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int align; } ;
typedef TYPE_1__ Type ;
typedef int Node ;


 int * ast_inttype (int ,int ) ;
 int expect (char) ;
 TYPE_1__* read_cast_type () ;
 int type_ulong ;

__attribute__((used)) static Node *read_alignof_operand() {
    expect('(');
    Type *ty = read_cast_type();
    expect(')');
    return ast_inttype(type_ulong, ty->align);
}
