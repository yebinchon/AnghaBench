
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* head; TYPE_2__* tail; } ;
struct TYPE_7__ {TYPE_1__ waiters; } ;
typedef TYPE_3__ VCOS_EVENT_FLAGS_T ;
struct TYPE_6__ {int * next; } ;



__attribute__((used)) static int waiter_list_valid(VCOS_EVENT_FLAGS_T *flags)
{
   int valid;

   if (flags->waiters.head == ((void*)0))
   {
      valid = (flags->waiters.tail == ((void*)0));
   }
   else
   {
      valid = (flags->waiters.tail != ((void*)0));
   }




   if (flags->waiters.head && (flags->waiters.head == flags->waiters.tail))
   {
      valid = (flags->waiters.head->next == ((void*)0));
   }
   return valid;
}
