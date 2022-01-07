
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ast_t ;


 int * ast_pending () ;

ast_t
ast_peek(ast_t reasons)
{
 ast_t *pending_ast = ast_pending();

 reasons &= *pending_ast;

 return reasons;
}
