
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int kind; int fname; TYPE_1__* ty; struct TYPE_7__* struc; int operand; int glabel; int loff; } ;
struct TYPE_6__ {int offset; } ;
typedef TYPE_2__ Node ;







 int emit (char*,int ) ;
 int emit_expr (int ) ;
 int ensure_lvar_init (TYPE_2__*) ;
 int error (char*,int ) ;
 int node2s (TYPE_2__*) ;

__attribute__((used)) static void emit_addr(Node *node) {
    switch (node->kind) {
    case 129:
        ensure_lvar_init(node);
        emit("lea %d(#rbp), #rax", node->loff);
        break;
    case 130:
        emit("lea %s(#rip), #rax", node->glabel);
        break;
    case 132:
        emit_expr(node->operand);
        break;
    case 128:
        emit_addr(node->struc);
        emit("add $%d, #rax", node->ty->offset);
        break;
    case 131:
        emit("lea %s(#rip), #rax", node->fname);
        break;
    default:
        error("internal error: %s", node2s(node));
    }
}
