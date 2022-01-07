
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int Typespec ;
struct TYPE_2__ {int pos; } ;
typedef int SrcPos ;
typedef int Expr ;
typedef int CompoundField ;


 int TOKEN_COMMA ;
 int TOKEN_LBRACE ;
 int TOKEN_RBRACE ;
 int buf_len (int *) ;
 int buf_push (int *,int ) ;
 int expect_token (int ) ;
 int is_token (int ) ;
 int match_token (int ) ;
 int * new_expr_compound (int ,int *,int *,int ) ;
 int parse_expr_compound_field () ;
 TYPE_1__ token ;

Expr *parse_expr_compound(Typespec *type) {
    SrcPos pos = token.pos;
    expect_token(TOKEN_LBRACE);
    CompoundField *fields = ((void*)0);
    while (!is_token(TOKEN_RBRACE)) {
        buf_push(fields, parse_expr_compound_field());
        if (!match_token(TOKEN_COMMA)) {
            break;
        }
    }
    expect_token(TOKEN_RBRACE);
    return new_expr_compound(pos, type, fields, buf_len(fields));
}
