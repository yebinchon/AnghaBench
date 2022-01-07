
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* ty; } ;
struct TYPE_6__ {int kind; scalar_t__ usig; } ;
struct TYPE_5__ {TYPE_3__* left; TYPE_3__* right; } ;
typedef TYPE_1__ Node ;


 int KIND_FLOAT ;
 int KIND_LLONG ;
 int KIND_LONG ;
 int SAVE ;
 int emit (char*,...) ;
 int emit_expr (TYPE_3__*) ;
 scalar_t__ is_flotype (TYPE_2__*) ;
 int pop (char*) ;
 int pop_xmm (int) ;
 int push (char*) ;
 int push_xmm (int ) ;

__attribute__((used)) static void emit_comp(char *inst, char *usiginst, Node *node) {
    SAVE;
    if (is_flotype(node->left->ty)) {
        emit_expr(node->left);
        push_xmm(0);
        emit_expr(node->right);
        pop_xmm(1);
        if (node->left->ty->kind == KIND_FLOAT)
            emit("ucomiss #xmm0, #xmm1");
        else
            emit("ucomisd #xmm0, #xmm1");
    } else {
        emit_expr(node->left);
        push("rax");
        emit_expr(node->right);
        pop("rcx");
        int kind = node->left->ty->kind;
        if (kind == KIND_LONG || kind == KIND_LLONG)
          emit("cmp #rax, #rcx");
        else
          emit("cmp #eax, #ecx");
    }
    if (is_flotype(node->left->ty) || node->left->ty->usig)
        emit("%s #al", usiginst);
    else
        emit("%s #al", inst);
    emit("movzb #al, #eax");
}
