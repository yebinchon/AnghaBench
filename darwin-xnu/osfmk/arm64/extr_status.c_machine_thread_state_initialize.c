
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_8__ ;
typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef TYPE_7__* thread_t ;
typedef int kern_return_t ;
struct TYPE_12__ {int fpcr; } ;
struct TYPE_11__ {int fpcr; } ;
struct TYPE_10__ {scalar_t__ flavor; } ;
struct TYPE_15__ {TYPE_3__ ns_32; TYPE_2__ ns_64; TYPE_1__ nsh; int uns; } ;
struct TYPE_14__ {int uss; } ;
struct TYPE_17__ {TYPE_6__ ns; TYPE_5__ ss; } ;
typedef TYPE_8__ arm_context_t ;
struct TYPE_13__ {int * DebugData; TYPE_8__* contextData; } ;
struct TYPE_16__ {TYPE_4__ machine; } ;


 scalar_t__ ARM_NEON_SAVED_STATE64 ;
 int FPCR_DEFAULT ;
 int FPCR_DEFAULT_32 ;
 int KERN_SUCCESS ;
 int bzero (int *,int) ;

kern_return_t
machine_thread_state_initialize(
    thread_t thread)
{
 arm_context_t *context = thread->machine.contextData;







 if (context != ((void*)0)) {
  bzero(&context->ss.uss, sizeof(context->ss.uss));
  bzero(&context->ns.uns, sizeof(context->ns.uns));

  if (context->ns.nsh.flavor == ARM_NEON_SAVED_STATE64) {
   context->ns.ns_64.fpcr = FPCR_DEFAULT;
  } else {
   context->ns.ns_32.fpcr = FPCR_DEFAULT_32;
  }
 }

 thread->machine.DebugData = ((void*)0);


 return KERN_SUCCESS;
}
