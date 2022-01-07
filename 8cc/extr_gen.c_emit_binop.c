
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ kind; } ;
struct TYPE_9__ {int kind; TYPE_3__* ty; int right; int left; } ;
typedef TYPE_1__ Node ;


 scalar_t__ KIND_PTR ;



 int SAVE ;
 int emit_binop_float_arith (TYPE_1__*) ;
 int emit_binop_int_arith (TYPE_1__*) ;
 int emit_comp (char*,char*,TYPE_1__*) ;
 int emit_pointer_arith (int,int ,int ) ;
 int error (char*,int ) ;
 scalar_t__ is_flotype (TYPE_3__*) ;
 scalar_t__ is_inttype (TYPE_3__*) ;
 int node2s (TYPE_1__*) ;

__attribute__((used)) static void emit_binop(Node *node) {
    SAVE;
    if (node->ty->kind == KIND_PTR) {
        emit_pointer_arith(node->kind, node->left, node->right);
        return;
    }
    switch (node->kind) {
    case '<': emit_comp("setl", "setb", node); return;
    case 130: emit_comp("sete", "sete", node); return;
    case 129: emit_comp("setle", "setna", node); return;
    case 128: emit_comp("setne", "setne", node); return;
    }
    if (is_inttype(node->ty))
        emit_binop_int_arith(node);
    else if (is_flotype(node->ty))
        emit_binop_float_arith(node);
    else
        error("internal error: %s", node2s(node));
}
