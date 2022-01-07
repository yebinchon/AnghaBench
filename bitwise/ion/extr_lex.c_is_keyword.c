
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char const* name; } ;


 int TOKEN_KEYWORD ;
 scalar_t__ is_token (int ) ;
 TYPE_1__ token ;

bool is_keyword(const char *name) {
    return is_token(TOKEN_KEYWORD) && token.name == name;
}
