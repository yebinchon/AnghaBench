
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ els; scalar_t__ then; scalar_t__ cond; } ;
typedef TYPE_1__ Node ;


 int SAVE ;
 int emit_expr (scalar_t__) ;
 int emit_je (char*) ;
 int emit_jmp (char*) ;
 int emit_label (char*) ;
 char* make_label () ;

__attribute__((used)) static void emit_ternary(Node *node) {
    SAVE;
    emit_expr(node->cond);
    char *ne = make_label();
    emit_je(ne);
    if (node->then)
        emit_expr(node->then);
    if (node->els) {
        char *end = make_label();
        emit_jmp(end);
        emit_label(ne);
        emit_expr(node->els);
        emit_label(end);
    } else {
        emit_label(ne);
    }
}
