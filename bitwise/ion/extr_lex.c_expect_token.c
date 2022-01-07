
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TokenKind ;


 int fatal_error_here (char*,int ,int ) ;
 scalar_t__ is_token (int ) ;
 int next_token () ;
 int token_info () ;
 int token_kind_name (int ) ;

bool expect_token(TokenKind kind) {
    if (is_token(kind)) {
        next_token();
        return 1;
    } else {
        fatal_error_here("Expected token %s, got %s", token_kind_name(kind), token_info());
        return 0;
    }
}
