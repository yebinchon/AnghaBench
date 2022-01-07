
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int right; int left; } ;
typedef TYPE_1__ Node ;


 int SAVE ;
 int emit (char*) ;
 int emit_expr (int ) ;
 int pop (char*) ;
 int push (char*) ;

__attribute__((used)) static void emit_bitand(Node *node) {
    SAVE;
    emit_expr(node->left);
    push("rax");
    emit_expr(node->right);
    pop("rcx");
    emit("and #rcx, #rax");
}
