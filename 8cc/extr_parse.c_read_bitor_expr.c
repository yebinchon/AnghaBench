
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Node ;


 int * binop (char,int ,int ) ;
 int conv (int *) ;
 scalar_t__ next_token (char) ;
 int * read_bitxor_expr () ;

__attribute__((used)) static Node *read_bitor_expr() {
    Node *node = read_bitxor_expr();
    while (next_token('|'))
        node = binop('|', conv(node), conv(read_bitxor_expr()));
    return node;
}
