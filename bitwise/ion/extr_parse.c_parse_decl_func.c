
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int Typespec ;
struct TYPE_8__ {int is_incomplete; } ;
struct TYPE_7__ {int member_0; } ;
typedef TYPE_1__ StmtList ;
typedef int SrcPos ;
typedef int FuncParam ;
typedef TYPE_2__ Decl ;


 int TOKEN_COLON ;
 int TOKEN_COMMA ;
 int TOKEN_ELLIPSIS ;
 int TOKEN_LPAREN ;
 int TOKEN_RPAREN ;
 int TOKEN_SEMICOLON ;
 int buf_len (int *) ;
 int buf_push (int *,int ) ;
 int error_here (char*) ;
 int expect_token (int ) ;
 int is_token (int ) ;
 scalar_t__ match_token (int ) ;
 TYPE_2__* new_decl_func (int ,char const*,int *,int ,int *,int,int *,TYPE_1__) ;
 int parse_decl_func_param () ;
 char* parse_name () ;
 TYPE_1__ parse_stmt_block () ;
 int * parse_type () ;

Decl *parse_decl_func(SrcPos pos) {
    const char *name = parse_name();
    expect_token(TOKEN_LPAREN);
    FuncParam *params = ((void*)0);
    bool has_varargs = 0;
    Typespec *varargs_type = ((void*)0);
    if (!is_token(TOKEN_RPAREN)) {
        buf_push(params, parse_decl_func_param());
        while (match_token(TOKEN_COMMA)) {
            if (match_token(TOKEN_ELLIPSIS)) {
                if (has_varargs) {
                    error_here("Multiple ellipsis in function declaration");
                }
                if (!is_token(TOKEN_RPAREN)) {
                    varargs_type = parse_type();
                }
                has_varargs = 1;
            } else {
                if (has_varargs) {
                    error_here("Ellipsis must be last parameter in function declaration");
                }
                buf_push(params, parse_decl_func_param());
            }
        }
    }
    expect_token(TOKEN_RPAREN);
    Typespec *ret_type = ((void*)0);
    if (match_token(TOKEN_COLON)) {
        ret_type = parse_type();
    }
    StmtList block = {0};
    bool is_incomplete;
    if (match_token(TOKEN_SEMICOLON)) {
        is_incomplete = 1;
    } else {
        block = parse_stmt_block();
        is_incomplete = 0;
    }
    Decl *decl = new_decl_func(pos, name, params, buf_len(params), ret_type, has_varargs, varargs_type, block);
    decl->is_incomplete = is_incomplete;
    return decl;
}
