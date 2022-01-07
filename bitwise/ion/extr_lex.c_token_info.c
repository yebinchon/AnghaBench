
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ kind; char const* name; } ;


 scalar_t__ TOKEN_KEYWORD ;
 scalar_t__ TOKEN_NAME ;
 TYPE_1__ token ;
 char const* token_kind_name (scalar_t__) ;

const char *token_info(void) {
    if (token.kind == TOKEN_NAME || token.kind == TOKEN_KEYWORD) {
        return token.name;
    } else {
        return token_kind_name(token.kind);
    }
}
