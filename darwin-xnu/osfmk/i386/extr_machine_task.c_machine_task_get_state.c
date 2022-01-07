
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int ds32; int ds64; } ;
struct TYPE_7__ {int flavor; void* count; } ;
struct TYPE_9__ {TYPE_2__ uds; TYPE_1__ dsh; } ;
typedef TYPE_3__ x86_debug_state_t ;
typedef int x86_debug_state64_t ;
typedef int x86_debug_state32_t ;
typedef int * thread_state_t ;
typedef TYPE_4__* task_t ;
typedef void* mach_msg_type_number_t ;
typedef int kern_return_t ;
struct TYPE_10__ {int * task_debug; } ;


 int KERN_INVALID_ARGUMENT ;
 int KERN_SUCCESS ;
 int TRUE ;
 int bzero (int *,int) ;
 int copy_debug_state32 (int *,int *,int ) ;
 int copy_debug_state64 (int *,int *,int ) ;
 int task_has_64Bit_addr (TYPE_4__*) ;


 void* x86_DEBUG_STATE32_COUNT ;

 void* x86_DEBUG_STATE64_COUNT ;
 void* x86_DEBUG_STATE_COUNT ;

kern_return_t
machine_task_get_state(task_t task,
  int flavor,
  thread_state_t state,
  mach_msg_type_number_t *state_count)
{
 switch (flavor) {
  case 129:
  {
   x86_debug_state32_t *tstate = (x86_debug_state32_t*) state;

   if ((task_has_64Bit_addr(task)) || (*state_count != x86_DEBUG_STATE32_COUNT)) {
    return KERN_INVALID_ARGUMENT;
   }

   if (task->task_debug == ((void*)0)) {
    bzero(state, sizeof(*tstate));
   } else {
    copy_debug_state32((x86_debug_state32_t*) task->task_debug, tstate, TRUE);
   }

   return KERN_SUCCESS;
  }
  case 128:
  {
   x86_debug_state64_t *tstate = (x86_debug_state64_t*) state;

   if ((!task_has_64Bit_addr(task)) || (*state_count != x86_DEBUG_STATE64_COUNT)) {
    return KERN_INVALID_ARGUMENT;
   }

   if (task->task_debug == ((void*)0)) {
    bzero(state, sizeof(*tstate));
   } else {
    copy_debug_state64((x86_debug_state64_t*) task->task_debug, tstate, TRUE);
   }

   return KERN_SUCCESS;
  }
  case 130:
  {
   x86_debug_state_t *tstate = (x86_debug_state_t*)state;

   if (*state_count != x86_DEBUG_STATE_COUNT)
    return(KERN_INVALID_ARGUMENT);

   if (task_has_64Bit_addr(task)) {
    tstate->dsh.flavor = 128;
    tstate->dsh.count = x86_DEBUG_STATE64_COUNT;

    if (task->task_debug == ((void*)0)) {
     bzero(&tstate->uds.ds64, sizeof(tstate->uds.ds64));
    } else {
     copy_debug_state64((x86_debug_state64_t*)task->task_debug, &tstate->uds.ds64, TRUE);
    }
   } else {
    tstate->dsh.flavor = 129;
    tstate->dsh.count = x86_DEBUG_STATE32_COUNT;

    if (task->task_debug == ((void*)0)) {
     bzero(&tstate->uds.ds32, sizeof(tstate->uds.ds32));
    } else {
     copy_debug_state32((x86_debug_state32_t*)task->task_debug, &tstate->uds.ds32, TRUE);
    }
   }

   return KERN_SUCCESS;
  }
  default:
  {
   return KERN_INVALID_ARGUMENT;
  }
 }
}
