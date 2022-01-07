
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TOKEN_ADD ;
 int TOKEN_AND ;
 int TOKEN_DEC ;
 int TOKEN_INC ;
 int TOKEN_MUL ;
 int TOKEN_NEG ;
 int TOKEN_NOT ;
 int TOKEN_SUB ;
 scalar_t__ is_token (int ) ;

bool is_unary_op(void) {
    return
        is_token(TOKEN_ADD) ||
        is_token(TOKEN_SUB) ||
        is_token(TOKEN_MUL) ||
        is_token(TOKEN_AND) ||
        is_token(TOKEN_NEG) ||
        is_token(TOKEN_NOT) ||
        is_token(TOKEN_INC) ||
        is_token(TOKEN_DEC);
}
