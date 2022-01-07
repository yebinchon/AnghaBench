
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ cpu; int arg; int (* f ) (int ) ;} ;
typedef TYPE_1__ xcArg_t ;
struct TYPE_4__ {scalar_t__ cpu_id; } ;


 TYPE_2__* CPU ;
 scalar_t__ DTRACE_CPUALL ;
 int stub1 (int ) ;

__attribute__((used)) static void
xcRemote( void *foo )
{
 xcArg_t *pArg = (xcArg_t *)foo;

 if ( pArg->cpu == CPU->cpu_id || pArg->cpu == DTRACE_CPUALL ) {
  (pArg->f)(pArg->arg);
 }
}
