
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int x86_debug_state64_t ;
typedef TYPE_1__* thread_t ;
typedef TYPE_2__* pcb_t ;
typedef int kern_return_t ;
struct TYPE_9__ {int (* volatile_state ) (scalar_t__,int ) ;} ;
struct TYPE_8__ {int * ids; int lock; } ;
struct TYPE_7__ {scalar_t__ hv_thread_target; } ;


 int FALSE ;
 int HV_DEBUG_STATE ;
 int KERN_INVALID_ARGUMENT ;
 int KERN_SUCCESS ;
 TYPE_2__* THREAD_TO_PCB (TYPE_1__*) ;
 scalar_t__ TRUE ;
 int bzero (int *,int) ;
 int copy_debug_state64 (int *,int *,int ) ;
 scalar_t__ debug_state_is_valid64 (int *) ;
 TYPE_4__ hv_callbacks ;
 int ids_zone ;
 int simple_lock (int *) ;
 int simple_unlock (int *) ;
 int stub1 (scalar_t__,int ) ;
 int * zalloc (int ) ;
 int zfree (int ,int *) ;

__attribute__((used)) static kern_return_t
set_debug_state64(thread_t thread, x86_debug_state64_t *ds)
{
 x86_debug_state64_t *new_ids;
 pcb_t pcb;

 pcb = THREAD_TO_PCB(thread);

 if (debug_state_is_valid64(ds) != TRUE) {
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

 copy_debug_state64(ds, pcb->ids, FALSE);

 return (KERN_SUCCESS);
}
