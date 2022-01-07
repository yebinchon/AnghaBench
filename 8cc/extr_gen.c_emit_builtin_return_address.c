
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int args; } ;
typedef TYPE_1__ Node ;


 int assert (int) ;
 int emit (char*,...) ;
 int emit_expr (int ) ;
 int emit_jmp (char*) ;
 int emit_label (char*) ;
 char* make_label () ;
 int pop (char*) ;
 int push (char*) ;
 int vec_head (int ) ;
 int vec_len (int ) ;

__attribute__((used)) static void emit_builtin_return_address(Node *node) {
    push("r11");
    assert(vec_len(node->args) == 1);
    emit_expr(vec_head(node->args));
    char *loop = make_label();
    char *end = make_label();
    emit("mov #rbp, #r11");
    emit_label(loop);
    emit("test #rax, #rax");
    emit("jz %s", end);
    emit("mov (#r11), #r11");
    emit("sub $1, #rax");
    emit_jmp(loop);
    emit_label(end);
    emit("mov 8(#r11), #rax");
    pop("r11");
}
