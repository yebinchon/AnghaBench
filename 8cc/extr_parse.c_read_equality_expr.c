
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int ty; } ;
typedef TYPE_1__ Node ;


 int OP_EQ ;
 int OP_NE ;
 TYPE_1__* binop (int ,int ,int ) ;
 int conv (TYPE_1__*) ;
 scalar_t__ next_token (int ) ;
 TYPE_1__* read_relational_expr () ;
 int type_int ;

__attribute__((used)) static Node *read_equality_expr() {
    Node *node = read_relational_expr();
    Node *r;
    if (next_token(OP_EQ)) {
        r = binop(OP_EQ, conv(node), conv(read_equality_expr()));
    } else if (next_token(OP_NE)) {
        r = binop(OP_NE, conv(node), conv(read_equality_expr()));
    } else {
        return node;
    }
    r->ty = type_int;
    return r;
}
