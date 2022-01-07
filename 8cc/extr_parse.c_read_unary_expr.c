
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ kind; int id; } ;
typedef TYPE_1__ Token ;
typedef int Node ;







 int OP_PRE_DEC ;
 int OP_PRE_INC ;
 scalar_t__ TKEYWORD ;
 TYPE_1__* get () ;
 int * read_alignof_operand () ;
 int * read_cast_expr () ;
 int * read_label_addr (TYPE_1__*) ;
 int * read_postfix_expr () ;
 int * read_sizeof_operand () ;
 int * read_unary_addr () ;
 int * read_unary_bitnot (TYPE_1__*) ;
 int * read_unary_deref (TYPE_1__*) ;
 int * read_unary_incdec (int ) ;
 int * read_unary_lognot () ;
 int * read_unary_minus () ;
 int unget_token (TYPE_1__*) ;

__attribute__((used)) static Node *read_unary_expr() {
    Token *tok = get();
    if (tok->kind == TKEYWORD) {
        switch (tok->id) {
        case 131: return read_sizeof_operand();
        case 132: return read_alignof_operand();
        case 129: return read_unary_incdec(OP_PRE_INC);
        case 130: return read_unary_incdec(OP_PRE_DEC);
        case 128: return read_label_addr(tok);
        case '&': return read_unary_addr();
        case '*': return read_unary_deref(tok);
        case '+': return read_cast_expr();
        case '-': return read_unary_minus();
        case '~': return read_unary_bitnot(tok);
        case '!': return read_unary_lognot();
        }
    }
    unget_token(tok);
    return read_postfix_expr();
}
