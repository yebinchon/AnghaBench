
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int Typespec ;
struct TYPE_2__ {int pos; } ;
typedef int SrcPos ;
typedef int Expr ;


 int TOKEN_LBRACKET ;
 int TOKEN_MUL ;
 int TOKEN_RBRACKET ;
 int assert (scalar_t__) ;
 int const_keyword ;
 int expect_token (int ) ;
 scalar_t__ is_keyword (int ) ;
 scalar_t__ is_token (int ) ;
 scalar_t__ match_keyword (int ) ;
 scalar_t__ match_token (int ) ;
 int * new_typespec_array (int ,int *,int *) ;
 int * new_typespec_const (int ,int *) ;
 int * new_typespec_ptr (int ,int *) ;
 int next_token () ;
 int * parse_expr () ;
 int * parse_type_base () ;
 TYPE_1__ token ;

Typespec *parse_type(void) {
    Typespec *type = parse_type_base();
    SrcPos pos = token.pos;
    while (is_token(TOKEN_LBRACKET) || is_token(TOKEN_MUL) || is_keyword(const_keyword)) {
        if (match_token(TOKEN_LBRACKET)) {
            Expr *size = ((void*)0);
            if (!is_token(TOKEN_RBRACKET)) {
                size = parse_expr();
            }
            expect_token(TOKEN_RBRACKET);
            type = new_typespec_array(pos, type, size);
        } else if (match_keyword(const_keyword)) {
            type = new_typespec_const(pos, type);
        } else {
            assert(is_token(TOKEN_MUL));
            next_token();
            type = new_typespec_ptr(pos, type);
        }
    }
    return type;
}
