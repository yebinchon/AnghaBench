
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Node ;


 int * read_comma_expr () ;

__attribute__((used)) static Node *read_expr_opt() {
    return read_comma_expr();
}
