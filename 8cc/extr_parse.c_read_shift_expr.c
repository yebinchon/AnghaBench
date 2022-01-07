
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_7__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ usig; } ;
struct TYPE_8__ {TYPE_7__* ty; } ;
typedef TYPE_1__ Node ;


 int OP_SAL ;
 int OP_SAR ;
 int OP_SHR ;
 TYPE_1__* ast_binop (TYPE_7__*,int,int ,int ) ;
 int conv (TYPE_1__*) ;
 int ensure_inttype (TYPE_1__*) ;
 scalar_t__ next_token (int) ;
 TYPE_1__* read_additive_expr () ;

__attribute__((used)) static Node *read_shift_expr() {
    Node *node = read_additive_expr();
    for (;;) {
        int op;
        if (next_token(OP_SAL))
            op = OP_SAL;
        else if (next_token(OP_SAR))
            op = node->ty->usig ? OP_SHR : OP_SAR;
        else
            break;
        Node *right = read_additive_expr();
        ensure_inttype(node);
        ensure_inttype(right);
        node = ast_binop(node->ty, op, conv(node), conv(right));
    }
    return node;
}
