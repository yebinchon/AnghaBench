
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int x86_debug_state32_t ;
typedef int thread_t ;
typedef TYPE_1__* pcb_t ;
typedef int kern_return_t ;
struct TYPE_3__ {int * ids; int lock; } ;


 int FALSE ;
 int KERN_INVALID_ARGUMENT ;
 int KERN_SUCCESS ;
 TYPE_1__* THREAD_TO_PCB (int ) ;
 scalar_t__ TRUE ;
 int bzero (int *,int) ;
 int copy_debug_state32 (int *,int *,int ) ;
 scalar_t__ debug_state_is_valid32 (int *) ;
 int ids_zone ;
 int simple_lock (int *) ;
 int simple_unlock (int *) ;
 int * zalloc (int ) ;
 int zfree (int ,int *) ;

__attribute__((used)) static kern_return_t
set_debug_state32(thread_t thread, x86_debug_state32_t *ds)
{
 x86_debug_state32_t *new_ids;
 pcb_t pcb;

 pcb = THREAD_TO_PCB(thread);

 if (debug_state_is_valid32(ds) != TRUE) {
  return KERN_INVALID_ARGUMENT;
 }

 if (pcb->ids == ((void*)0)) {
  new_ids = zalloc(ids_zone);
  bzero(new_ids, sizeof *new_ids);

  simple_lock(&pcb->lock);

  if (pcb->ids == ((void*)0)) {
   pcb->ids = new_ids;
   simple_unlock(&pcb->lock);
  } else {
   simple_unlock(&pcb->lock);
   zfree(ids_zone, new_ids);
  }
 }


 copy_debug_state32(ds, pcb->ids, FALSE);

 return (KERN_SUCCESS);
}
