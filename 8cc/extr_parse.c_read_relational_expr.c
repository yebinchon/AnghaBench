
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int ty; } ;
typedef TYPE_1__ Node ;


 char OP_GE ;
 char OP_LE ;
 TYPE_1__* binop (char,int ,int ) ;
 int conv (TYPE_1__*) ;
 scalar_t__ next_token (char) ;
 TYPE_1__* read_shift_expr () ;
 int type_int ;

__attribute__((used)) static Node *read_relational_expr() {
    Node *node = read_shift_expr();
    for (;;) {
        if (next_token('<')) node = binop('<', conv(node), conv(read_shift_expr()));
        else if (next_token('>')) node = binop('<', conv(read_shift_expr()), conv(node));
        else if (next_token(OP_LE)) node = binop(OP_LE, conv(node), conv(read_shift_expr()));
        else if (next_token(OP_GE)) node = binop(OP_LE, conv(read_shift_expr()), conv(node));
        else return node;
        node->ty = type_int;
    }
}
