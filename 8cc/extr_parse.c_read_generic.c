
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int Vector ;
typedef int Type ;
typedef int Token ;
struct TYPE_6__ {int ty; } ;
typedef TYPE_1__ Node ;


 int errort (int *,char*,int ,int ) ;
 int expect (char) ;
 int node2s (TYPE_1__*) ;
 int * peek () ;
 TYPE_1__* read_assignment_expr () ;
 int * read_generic_list (TYPE_1__**) ;
 int ty2s (int ) ;
 scalar_t__ type_compatible (int ,int *) ;
 void** vec_get (int *,int) ;
 int vec_len (int *) ;

__attribute__((used)) static Node *read_generic() {
    expect('(');
    Token *tok = peek();
    Node *contexpr = read_assignment_expr();
    expect(',');
    Node *defaultexpr = ((void*)0);
    Vector *list = read_generic_list(&defaultexpr);
    for (int i = 0; i < vec_len(list); i++) {
        void **pair = vec_get(list, i);
        Type *ty = pair[0];
        Node *expr = pair[1];
        if (type_compatible(contexpr->ty, ty))
            return expr;
    }
   if (!defaultexpr)
       errort(tok, "no matching generic selection for %s: %s", node2s(contexpr), ty2s(contexpr->ty));
   return defaultexpr;
}
