
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int ty; } ;
struct TYPE_4__ {TYPE_3__* retval; } ;
typedef TYPE_1__ Node ;


 int SAVE ;
 int emit_expr (TYPE_3__*) ;
 int emit_ret () ;
 int maybe_booleanize_retval (int ) ;

__attribute__((used)) static void emit_return(Node *node) {
    SAVE;
    if (node->retval) {
        emit_expr(node->retval);
        maybe_booleanize_retval(node->retval->ty);
    }
    emit_ret();
}
