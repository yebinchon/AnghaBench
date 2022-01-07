
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int args; } ;
typedef TYPE_1__ Node ;


 int REGAREA_SIZE ;
 int SAVE ;
 int assert (int) ;
 int emit (char*,...) ;
 int emit_expr (int ) ;
 int numfp ;
 int numgp ;
 int pop (char*) ;
 int push (char*) ;
 int vec_head (int ) ;
 int vec_len (int ) ;

__attribute__((used)) static void emit_builtin_va_start(Node *node) {
    SAVE;
    assert(vec_len(node->args) == 1);
    emit_expr(vec_head(node->args));
    push("rcx");
    emit("movl $%d, (#rax)", numgp * 8);
    emit("movl $%d, 4(#rax)", 48 + numfp * 16);
    emit("lea %d(#rbp), #rcx", -REGAREA_SIZE);
    emit("mov #rcx, 16(#rax)");
    pop("rcx");
}
