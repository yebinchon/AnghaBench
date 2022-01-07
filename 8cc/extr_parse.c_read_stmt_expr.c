
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int Type ;
struct TYPE_5__ {int * ty; int stmts; } ;
typedef TYPE_1__ Node ;


 int expect (char) ;
 TYPE_1__* read_compound_stmt () ;
 int * type_void ;
 scalar_t__ vec_len (int ) ;
 TYPE_1__* vec_tail (int ) ;

__attribute__((used)) static Node *read_stmt_expr() {
    Node *r = read_compound_stmt();
    expect(')');
    Type *rtype = type_void;
    if (vec_len(r->stmts) > 0) {
        Node *lastexpr = vec_tail(r->stmts);
        if (lastexpr->ty)
            rtype = lastexpr->ty;
    }
    r->ty = rtype;
    return r;
}
