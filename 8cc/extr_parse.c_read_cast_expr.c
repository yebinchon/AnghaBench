
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Type ;
typedef int Token ;
typedef int Node ;


 int OP_CAST ;
 int * ast_uop (int ,int *,int *) ;
 int expect (char) ;
 int * get () ;
 scalar_t__ is_keyword (int *,char) ;
 scalar_t__ is_type (int *) ;
 int * peek () ;
 int * read_cast_type () ;
 int * read_compound_literal (int *) ;
 int * read_postfix_expr_tail (int *) ;
 int * read_unary_expr () ;
 int unget_token (int *) ;

__attribute__((used)) static Node *read_cast_expr() {
    Token *tok = get();
    if (is_keyword(tok, '(') && is_type(peek())) {
        Type *ty = read_cast_type();
        expect(')');
        if (is_keyword(peek(), '{')) {
            Node *node = read_compound_literal(ty);
            return read_postfix_expr_tail(node);
        }
        return ast_uop(OP_CAST, ty, read_cast_expr());
    }
    unget_token(tok);
    return read_unary_expr();
}
