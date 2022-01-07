
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int ast_t ;
struct TYPE_2__ {int cpu_pending_ast; } ;


 TYPE_1__* getCpuDatap () ;

ast_t *
ast_pending(void)
{
 return (&getCpuDatap()->cpu_pending_ast);
}
