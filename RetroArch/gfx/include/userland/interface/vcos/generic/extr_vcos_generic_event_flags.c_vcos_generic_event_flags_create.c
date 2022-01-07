
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int VCOS_STATUS_T ;
struct TYPE_4__ {scalar_t__ tail; scalar_t__ head; } ;
struct TYPE_5__ {TYPE_1__ waiters; scalar_t__ events; int lock; } ;
typedef TYPE_2__ VCOS_EVENT_FLAGS_T ;


 int VCOS_SUCCESS ;
 int vcos_mutex_create (int *,char const*) ;

VCOS_STATUS_T vcos_generic_event_flags_create(VCOS_EVENT_FLAGS_T *flags, const char *name)
{
   VCOS_STATUS_T rc;
   if ((rc=vcos_mutex_create(&flags->lock, name)) != VCOS_SUCCESS)
   {
      return rc;
   }

   flags->events = 0;
   flags->waiters.head = flags->waiters.tail = 0;
   return rc;
}
