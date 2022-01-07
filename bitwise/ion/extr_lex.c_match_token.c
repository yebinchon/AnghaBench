
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TokenKind ;


 scalar_t__ is_token (int ) ;
 int next_token () ;

bool match_token(TokenKind kind) {
    if (is_token(kind)) {
        next_token();
        return 1;
    } else {
        return 0;
    }
}
