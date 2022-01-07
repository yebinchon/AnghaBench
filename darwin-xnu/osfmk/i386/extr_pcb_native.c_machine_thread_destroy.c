
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef TYPE_1__* thread_t ;
typedef TYPE_2__* pcb_t ;
struct TYPE_10__ {int (* thread_destroy ) (int *) ;} ;
struct TYPE_9__ {scalar_t__ ifps; scalar_t__ iss; int * ids; } ;
struct TYPE_8__ {int * hv_thread_target; } ;


 TYPE_2__* THREAD_TO_PCB (TYPE_1__*) ;
 int fpu_free (TYPE_1__*,scalar_t__) ;
 TYPE_4__ hv_callbacks ;
 int ids_zone ;
 int iss_zone ;
 int stub1 (int *) ;
 int zfree (int ,int *) ;

void
machine_thread_destroy(
 thread_t thread)
{
 pcb_t pcb = THREAD_TO_PCB(thread);
 if (pcb->ifps != 0)
  fpu_free(thread, pcb->ifps);
 if (pcb->iss != 0) {
  zfree(iss_zone, pcb->iss);
  pcb->iss = 0;
 }
 if (pcb->ids) {
  zfree(ids_zone, pcb->ids);
  pcb->ids = ((void*)0);
 }
}
