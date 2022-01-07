
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int VCOS_UNSIGNED ;
typedef scalar_t__ VCOS_OPTION ;
struct TYPE_9__ {int requested_events; scalar_t__ op; int actual_events; struct TYPE_9__* next; int thread; int return_status; } ;
typedef TYPE_2__ VCOS_EVENT_WAITER_T ;
struct TYPE_8__ {TYPE_2__* tail; TYPE_2__* head; } ;
struct TYPE_10__ {int events; int lock; TYPE_1__ waiters; } ;
typedef TYPE_3__ VCOS_EVENT_FLAGS_T ;


 scalar_t__ VCOS_AND ;
 int VCOS_CONSUME ;
 scalar_t__ VCOS_OR ;
 int VCOS_SUCCESS ;
 int _vcos_thread_sem_post (int ) ;
 int vcos_assert (TYPE_3__*) ;
 int vcos_mutex_lock (int *) ;
 int vcos_mutex_unlock (int *) ;
 TYPE_3__* waiter_list_valid (TYPE_3__*) ;

void vcos_generic_event_flags_set(VCOS_EVENT_FLAGS_T *flags,
                                  VCOS_UNSIGNED bitmask,
                                  VCOS_OPTION op)
{
   vcos_assert(flags);
   vcos_mutex_lock(&flags->lock);
   if (op == VCOS_OR)
   {
      flags->events |= bitmask;
   }
   else if (op == VCOS_AND)
   {
      flags->events &= bitmask;
   }
   else
   {
      vcos_assert(0);
   }


   if (flags->waiters.head != ((void*)0))
   {
      VCOS_UNSIGNED consumed_events = 0;
      VCOS_EVENT_WAITER_T **pcurrent_waiter = &flags->waiters.head;
      VCOS_EVENT_WAITER_T *prev_waiter = ((void*)0);




      while ((*pcurrent_waiter) != ((void*)0))
      {
         VCOS_EVENT_WAITER_T *curr_waiter = *pcurrent_waiter;




         VCOS_UNSIGNED waiter_satisfied = flags->events & curr_waiter->requested_events;


         if (curr_waiter->op & VCOS_AND)
         {

            waiter_satisfied = (waiter_satisfied == curr_waiter->requested_events);
         }


         if (waiter_satisfied)
         {

            if (curr_waiter->op & VCOS_CONSUME)
            {
               consumed_events |= curr_waiter->requested_events;
            }


            *pcurrent_waiter = curr_waiter->next;
            if (curr_waiter->next == ((void*)0))
               flags->waiters.tail = prev_waiter;

            vcos_assert(waiter_list_valid(flags));

            curr_waiter->return_status = VCOS_SUCCESS;
            curr_waiter->actual_events = flags->events;

            _vcos_thread_sem_post(curr_waiter->thread);
         }
         else
         {

            prev_waiter = *pcurrent_waiter;
            pcurrent_waiter = &(curr_waiter->next);
         }
      }

      flags->events &= ~consumed_events;

   }

   vcos_mutex_unlock(&flags->lock);
}
