
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Node ;


 int OP_LOGAND ;
 int * ast_binop (int ,int ,int *,int *) ;
 scalar_t__ next_token (int ) ;
 int * read_bitor_expr () ;
 int type_int ;

__attribute__((used)) static Node *read_logand_expr() {
    Node *node = read_bitor_expr();
    while (next_token(OP_LOGAND))
        node = ast_binop(type_int, OP_LOGAND, node, read_bitor_expr());
    return node;
}
