
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ kind; } ;


 scalar_t__ TOKEN_EOF ;
 TYPE_1__ token ;

bool is_token_eof(void) {
    return token.kind == TOKEN_EOF;
}
