
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* thread_t ;
typedef int ast_t ;
struct TYPE_3__ {int ast; } ;


 int AST_PER_THREAD ;
 int* ast_pending () ;

void
ast_context(thread_t thread)
{
 ast_t *pending_ast = ast_pending();

 *pending_ast = ((*pending_ast & ~AST_PER_THREAD) | thread->ast);
}
