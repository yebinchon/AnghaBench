
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_1__ ;


typedef int Type ;
struct TYPE_11__ {int * ty; } ;
typedef TYPE_1__ Node ;


 TYPE_1__* ast_ternary (int *,TYPE_1__*,TYPE_1__*,TYPE_1__*) ;
 TYPE_1__* conv (int ) ;
 int expect (char) ;
 scalar_t__ is_arithtype (int *) ;
 int read_comma_expr () ;
 int read_conditional_expr () ;
 int * usual_arith_conv (int *,int *) ;
 TYPE_1__* wrap (int *,TYPE_1__*) ;

__attribute__((used)) static Node *do_read_conditional_expr(Node *cond) {
    Node *then = conv(read_comma_expr());
    expect(':');
    Node *els = conv(read_conditional_expr());

    Type *t = then ? then->ty : cond->ty;
    Type *u = els->ty;


    if (is_arithtype(t) && is_arithtype(u)) {
        Type *r = usual_arith_conv(t, u);
        return ast_ternary(r, cond, (then ? wrap(r, then) : ((void*)0)), wrap(r, els));
    }
    return ast_ternary(u, cond, then, els);
}
