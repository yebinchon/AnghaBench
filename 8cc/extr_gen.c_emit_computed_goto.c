
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int operand; } ;
typedef TYPE_1__ Node ;


 int SAVE ;
 int emit (char*) ;
 int emit_expr (int ) ;

__attribute__((used)) static void emit_computed_goto(Node *node) {
    SAVE;
    emit_expr(node->operand);
    emit("jmp *#rax");
}
