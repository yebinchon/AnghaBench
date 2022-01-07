
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int Typespec ;
struct TYPE_2__ {int pos; } ;
typedef int SrcPos ;


 int TOKEN_COLON ;
 int TOKEN_COMMA ;
 int TOKEN_ELLIPSIS ;
 int TOKEN_LPAREN ;
 int TOKEN_RPAREN ;
 int buf_len (int **) ;
 int buf_push (int **,int ) ;
 int error_here (char*) ;
 int expect_token (int ) ;
 int is_token (int ) ;
 scalar_t__ match_token (int ) ;
 int * new_typespec_func (int ,int **,int ,int *,int) ;
 int * parse_type () ;
 int parse_type_func_param () ;
 TYPE_1__ token ;

Typespec *parse_type_func(void) {
    SrcPos pos = token.pos;
    Typespec **args = ((void*)0);
    bool has_varargs = 0;
    expect_token(TOKEN_LPAREN);
    if (!is_token(TOKEN_RPAREN)) {
        buf_push(args, parse_type_func_param());
        while (match_token(TOKEN_COMMA)) {
            if (match_token(TOKEN_ELLIPSIS)) {
                if (has_varargs) {
                    error_here("Multiple ellipsis instances in function type");
                }
                has_varargs = 1;
            } else {
                if (has_varargs) {
                    error_here("Ellipsis must be last parameter in function type");
                }
                buf_push(args, parse_type_func_param());
            }
        }
    }
    expect_token(TOKEN_RPAREN);
    Typespec *ret = ((void*)0);
    if (match_token(TOKEN_COLON)) {
        ret = parse_type();
    }
    return new_typespec_func(pos, args, buf_len(args), ret, has_varargs);
}
