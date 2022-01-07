
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int ty; } ;
struct TYPE_6__ {int kind; TYPE_3__* left; TYPE_1__* ty; TYPE_3__* right; } ;
struct TYPE_5__ {scalar_t__ usig; } ;
typedef TYPE_2__ Node ;





 int SAVE ;
 int emit (char*,...) ;
 int emit_expr (TYPE_3__*) ;
 int error (char*,int) ;
 int get_int_reg (int ,char) ;
 int pop (char*) ;
 int push (char*) ;

__attribute__((used)) static void emit_binop_int_arith(Node *node) {
    SAVE;
    char *op = ((void*)0);
    switch (node->kind) {
    case '+': op = "add"; break;
    case '-': op = "sub"; break;
    case '*': op = "imul"; break;
    case '^': op = "xor"; break;
    case 130: op = "sal"; break;
    case 129: op = "sar"; break;
    case 128: op = "shr"; break;
    case '/': case '%': break;
    default: error("invalid operator '%d'", node->kind);
    }
    emit_expr(node->left);
    push("rax");
    emit_expr(node->right);
    emit("mov #rax, #rcx");
    pop("rax");
    if (node->kind == '/' || node->kind == '%') {
        if (node->ty->usig) {
          emit("xor #edx, #edx");
          emit("div #rcx");
        } else {
          emit("cqto");
          emit("idiv #rcx");
        }
        if (node->kind == '%')
            emit("mov #edx, #eax");
    } else if (node->kind == 130 || node->kind == 129 || node->kind == 128) {
        emit("%s #cl, #%s", op, get_int_reg(node->left->ty, 'a'));
    } else {
        emit("%s #rcx, #rax", op);
    }
}
