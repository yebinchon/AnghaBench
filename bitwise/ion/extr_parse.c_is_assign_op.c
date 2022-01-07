
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ kind; } ;


 scalar_t__ TOKEN_FIRST_ASSIGN ;
 scalar_t__ TOKEN_LAST_ASSIGN ;
 TYPE_1__ token ;

bool is_assign_op(void) {
    return TOKEN_FIRST_ASSIGN <= token.kind && token.kind <= TOKEN_LAST_ASSIGN;
}
