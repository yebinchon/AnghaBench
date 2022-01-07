
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* thread_t ;
struct TYPE_3__ {int ast; } ;


 int ast_on (int ) ;

void
ast_propagate(thread_t thread)
{
 ast_on(thread->ast);
}
