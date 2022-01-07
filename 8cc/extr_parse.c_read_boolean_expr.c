
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int ty; } ;
typedef TYPE_1__ Node ;


 TYPE_1__* ast_conv (int ,TYPE_1__*) ;
 scalar_t__ is_flotype (int ) ;
 TYPE_1__* read_expr () ;
 int type_bool ;

__attribute__((used)) static Node *read_boolean_expr() {
    Node *cond = read_expr();
    return is_flotype(cond->ty) ? ast_conv(type_bool, cond) : cond;
}
