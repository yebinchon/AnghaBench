
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Node ;


 int OP_LOGOR ;
 int * ast_binop (int ,int ,int *,int *) ;
 scalar_t__ next_token (int ) ;
 int * read_logand_expr () ;
 int type_int ;

__attribute__((used)) static Node *read_logor_expr() {
    Node *node = read_logand_expr();
    while (next_token(OP_LOGOR))
        node = ast_binop(type_int, OP_LOGOR, node, read_logand_expr());
    return node;
}
