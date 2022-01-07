
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ beg; scalar_t__ end; int label; } ;
typedef int Node ;
typedef TYPE_1__ Case ;


 int OP_EQ ;
 int OP_LE ;
 int OP_LOGAND ;
 int * ast_binop (int ,int ,int *,int *) ;
 int * ast_if (int *,int ,int *) ;
 int * ast_inttype (int ,scalar_t__) ;
 int ast_jump (int ) ;
 int type_int ;

__attribute__((used)) static Node *make_switch_jump(Node *var, Case *c) {
    Node *cond;
    if (c->beg == c->end) {
        cond = ast_binop(type_int, OP_EQ, var, ast_inttype(type_int, c->beg));
    } else {

        Node *x = ast_binop(type_int, OP_LE, ast_inttype(type_int, c->beg), var);
        Node *y = ast_binop(type_int, OP_LE, var, ast_inttype(type_int, c->end));
        cond = ast_binop(type_int, OP_LOGAND, x, y);
    }
    return ast_if(cond, ast_jump(c->label), ((void*)0));
}
