
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ TokenKind ;
struct TYPE_2__ {scalar_t__ kind; } ;


 TYPE_1__ token ;

bool is_token(TokenKind kind) {
    return token.kind == kind;
}
