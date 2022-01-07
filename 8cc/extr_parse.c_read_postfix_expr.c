
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Node ;


 int * read_postfix_expr_tail (int *) ;
 int * read_primary_expr () ;

__attribute__((used)) static Node *read_postfix_expr() {
    Node *node = read_primary_expr();
    return read_postfix_expr_tail(node);
}
