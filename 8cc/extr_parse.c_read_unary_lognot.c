
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Node ;


 int * ast_uop (char,int ,int *) ;
 int * conv (int *) ;
 int * read_cast_expr () ;
 int type_int ;

__attribute__((used)) static Node *read_unary_lognot() {
    Node *operand = read_cast_expr();
    operand = conv(operand);
    return ast_uop('!', type_int, operand);
}
