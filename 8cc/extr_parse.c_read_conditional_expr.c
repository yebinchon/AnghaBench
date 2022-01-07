
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Node ;


 int * do_read_conditional_expr (int *) ;
 int next_token (char) ;
 int * read_logor_expr () ;

__attribute__((used)) static Node *read_conditional_expr() {
    Node *cond = read_logor_expr();
    if (!next_token('?'))
        return cond;
    return do_read_conditional_expr(cond);
}
