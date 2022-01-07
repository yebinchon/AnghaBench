
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int thread_t ;
typedef TYPE_1__* pcb_t ;
struct TYPE_3__ {int xstate; } ;


 TYPE_1__* THREAD_TO_PCB (int ) ;
 int UNDEFINED ;
 int fp_state_free (void*,int ) ;

void
fpu_free(thread_t thread, void *fps)
{
 pcb_t pcb = THREAD_TO_PCB(thread);

 fp_state_free(fps, pcb->xstate);
 pcb->xstate = UNDEFINED;
}
