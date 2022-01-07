
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_2__* thread_t ;
struct arm_saved_state {int cpsr; } ;
typedef int kern_return_t ;
struct TYPE_4__ {int * DebugData; int kVFPdata; int uVFPdata; int PcbData; } ;
struct TYPE_5__ {TYPE_1__ machine; } ;


 int KERN_SUCCESS ;
 int PSR_USERDFLT ;
 int bzero (char*,int) ;
 int vfp_state_initialize (int *) ;

kern_return_t
machine_thread_state_initialize(
    thread_t thread)
{
 struct arm_saved_state *savestate;

 savestate = (struct arm_saved_state *) & thread->machine.PcbData;
 bzero((char *) savestate, sizeof(struct arm_saved_state));
 savestate->cpsr = PSR_USERDFLT;






 thread->machine.DebugData = ((void*)0);

 return KERN_SUCCESS;
}
