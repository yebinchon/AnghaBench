
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int rettype; } ;
typedef int Node ;


 int * ast_conv (int ,int *) ;
 int * ast_return (int *) ;
 TYPE_1__* current_func_type ;
 int expect (char) ;
 int * read_expr_opt () ;

__attribute__((used)) static Node *read_return_stmt() {
    Node *retval = read_expr_opt();
    expect(';');
    if (retval)
        return ast_return(ast_conv(current_func_type->rettype, retval));
    return ast_return(((void*)0));
}
