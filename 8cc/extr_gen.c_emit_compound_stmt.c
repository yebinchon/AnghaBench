
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int stmts; } ;
typedef TYPE_1__ Node ;


 int SAVE ;
 int emit_expr (int ) ;
 int vec_get (int ,int) ;
 int vec_len (int ) ;

__attribute__((used)) static void emit_compound_stmt(Node *node) {
    SAVE;
    for (int i = 0; i < vec_len(node->stmts); i++)
        emit_expr(vec_get(node->stmts, i));
}
