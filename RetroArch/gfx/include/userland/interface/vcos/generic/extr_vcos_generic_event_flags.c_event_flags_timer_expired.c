
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int VCOS_THREAD_T ;
struct TYPE_8__ {struct TYPE_8__* next; int * thread; TYPE_3__* flags; } ;
typedef TYPE_2__ VCOS_EVENT_WAITER_T ;
struct TYPE_7__ {TYPE_2__* tail; TYPE_2__* head; } ;
struct TYPE_9__ {int lock; TYPE_1__ waiters; } ;
typedef TYPE_3__ VCOS_EVENT_FLAGS_T ;


 int _vcos_thread_sem_post (int *) ;
 int vcos_assert (TYPE_3__*) ;
 int vcos_mutex_lock (int *) ;
 int vcos_mutex_unlock (int *) ;
 TYPE_3__* waiter_list_valid (TYPE_3__*) ;

__attribute__((used)) static void event_flags_timer_expired(void *cxt)
{
   VCOS_EVENT_WAITER_T *waitreq = (VCOS_EVENT_WAITER_T *)cxt;
   VCOS_EVENT_FLAGS_T *flags = waitreq->flags;
   VCOS_EVENT_WAITER_T **plist;
   VCOS_EVENT_WAITER_T *prev = ((void*)0);
   VCOS_THREAD_T *thread = 0;

   vcos_assert(flags);

   vcos_mutex_lock(&flags->lock);







   plist = &flags->waiters.head;
   while (*plist != ((void*)0))
   {
      if (*plist == waitreq)
      {
         int at_end;

         thread = (*plist)->thread;
         at_end = ((*plist)->next == ((void*)0));


         *plist = (*plist)->next;
         if (at_end)
            flags->waiters.tail = prev;

         break;
      }
      prev = *plist;
      plist = &(*plist)->next;
   }
   vcos_assert(waiter_list_valid(flags));

   vcos_mutex_unlock(&flags->lock);

   if (thread)
   {
      _vcos_thread_sem_post(thread);
   }
}
