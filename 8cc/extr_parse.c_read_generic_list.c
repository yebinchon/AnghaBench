
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Vector ;
typedef int Type ;
typedef int Token ;
typedef int Node ;


 char KDEFAULT ;
 int errort (int *,char*) ;
 int expect (char) ;
 int make_pair (int *,int *) ;
 int * make_vector () ;
 scalar_t__ next_token (char) ;
 int * peek () ;
 int * read_assignment_expr () ;
 int * read_cast_type () ;
 int vec_push (int *,int ) ;

__attribute__((used)) static Vector *read_generic_list(Node **defaultexpr) {
    Vector *r = make_vector();
    for (;;) {
        if (next_token(')'))
            return r;
        Token *tok = peek();
        if (next_token(KDEFAULT)) {
            if (*defaultexpr)
                errort(tok, "default expression specified twice");
            expect(':');
            *defaultexpr = read_assignment_expr();
        } else {
            Type *ty = read_cast_type();
            expect(':');
            Node *expr = read_assignment_expr();
            vec_push(r, make_pair(ty, expr));
        }
        next_token(',');
    }
}
