
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int stack; int stack_allocated; } ;
typedef TYPE_1__ lwp_cntrl ;


 int __lwp_wkspace_free (int ) ;

void __lwp_stack_free(lwp_cntrl *thethread)
{
 if(!thethread->stack_allocated)
  return;

 __lwp_wkspace_free(thethread->stack);
}
