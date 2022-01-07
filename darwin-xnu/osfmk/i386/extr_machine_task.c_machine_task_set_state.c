
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int ds64; int ds32; } ;
struct TYPE_7__ {int const flavor; int count; } ;
struct TYPE_9__ {TYPE_2__ uds; TYPE_1__ dsh; } ;
typedef TYPE_3__ x86_debug_state_t ;
typedef int x86_debug_state64_t ;
typedef int x86_debug_state32_t ;
typedef scalar_t__ thread_state_t ;
typedef TYPE_4__* task_t ;
typedef int mach_msg_type_number_t ;
typedef int kern_return_t ;
struct TYPE_10__ {int * task_debug; } ;


 int FALSE ;
 int KERN_INVALID_ARGUMENT ;
 int KERN_SUCCESS ;
 int copy_debug_state32 (int *,int *,int ) ;
 int copy_debug_state64 (int *,int *,int ) ;
 int debug_state_is_valid32 (int *) ;
 int debug_state_is_valid64 (int *) ;
 int ids_zone ;
 int task_has_64Bit_addr (TYPE_4__*) ;


 int x86_DEBUG_STATE32_COUNT ;

 int x86_DEBUG_STATE64_COUNT ;
 int x86_DEBUG_STATE_COUNT ;
 void* zalloc (int ) ;

kern_return_t
machine_task_set_state(
  task_t task,
  int flavor,
  thread_state_t state,
  mach_msg_type_number_t state_count)
{
 switch (flavor) {
  case 129:
  {
   x86_debug_state32_t *tstate = (x86_debug_state32_t*) state;
   if ((task_has_64Bit_addr(task)) ||
     (state_count != x86_DEBUG_STATE32_COUNT) ||
     (!debug_state_is_valid32(tstate))) {
    return KERN_INVALID_ARGUMENT;
   }

   if (task->task_debug == ((void*)0)) {
    task->task_debug = zalloc(ids_zone);
   }

   copy_debug_state32(tstate, (x86_debug_state32_t*) task->task_debug, FALSE);

   return KERN_SUCCESS;
  }
  case 128:
  {
   x86_debug_state64_t *tstate = (x86_debug_state64_t*) state;

   if ((!task_has_64Bit_addr(task)) ||
     (state_count != x86_DEBUG_STATE64_COUNT) ||
     (!debug_state_is_valid64(tstate))) {
    return KERN_INVALID_ARGUMENT;
   }

   if (task->task_debug == ((void*)0)) {
    task->task_debug = zalloc(ids_zone);
   }

   copy_debug_state64(tstate, (x86_debug_state64_t*) task->task_debug, FALSE);

   return KERN_SUCCESS;
  }
  case 130:
  {
   x86_debug_state_t *tstate = (x86_debug_state_t*) state;

   if (state_count != x86_DEBUG_STATE_COUNT) {
    return KERN_INVALID_ARGUMENT;
   }

   if ((tstate->dsh.flavor == 129) &&
     (tstate->dsh.count == x86_DEBUG_STATE32_COUNT) &&
     (!task_has_64Bit_addr(task)) &&
     debug_state_is_valid32(&tstate->uds.ds32)) {

    if (task->task_debug == ((void*)0)) {
     task->task_debug = zalloc(ids_zone);
    }

    copy_debug_state32(&tstate->uds.ds32, (x86_debug_state32_t*) task->task_debug, FALSE);
    return KERN_SUCCESS;

   } else if ((tstate->dsh.flavor == 128) &&
     (tstate->dsh.count == x86_DEBUG_STATE64_COUNT) &&
     task_has_64Bit_addr(task) &&
     debug_state_is_valid64(&tstate->uds.ds64)) {

    if (task->task_debug == ((void*)0)) {
     task->task_debug = zalloc(ids_zone);
    }

    copy_debug_state64(&tstate->uds.ds64, (x86_debug_state64_t*) task->task_debug, FALSE);
    return KERN_SUCCESS;
   } else {
    return KERN_INVALID_ARGUMENT;
   }
  }
  default:
  {
   return KERN_INVALID_ARGUMENT;
  }
 }
}
