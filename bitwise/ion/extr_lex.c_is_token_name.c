
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ kind; char const* name; } ;


 scalar_t__ TOKEN_NAME ;
 TYPE_1__ token ;

bool is_token_name(const char *name) {
    return token.kind == TOKEN_NAME && token.name == name;
}
