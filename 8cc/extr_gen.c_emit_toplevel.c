
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ kind; int body; } ;
typedef TYPE_1__ Node ;


 scalar_t__ AST_DECL ;
 scalar_t__ AST_FUNC ;
 int emit_expr (int ) ;
 int emit_func_prologue (TYPE_1__*) ;
 int emit_global_var (TYPE_1__*) ;
 int emit_ret () ;
 int error (char*) ;
 int stackpos ;

void emit_toplevel(Node *v) {
    stackpos = 8;
    if (v->kind == AST_FUNC) {
        emit_func_prologue(v);
        emit_expr(v->body);
        emit_ret();
    } else if (v->kind == AST_DECL) {
        emit_global_var(v);
    } else {
        error("internal error");
    }
}
