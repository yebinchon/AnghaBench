
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int wiiu_hid_t ;
struct TYPE_4__ {scalar_t__ state; struct TYPE_4__* next; } ;
typedef TYPE_1__ wiiu_adapter_t ;
struct TYPE_5__ {int lock; TYPE_1__* list; } ;


 scalar_t__ ADAPTER_STATE_DONE ;
 scalar_t__ ADAPTER_STATE_GC ;
 scalar_t__ ADAPTER_STATE_READY ;
 int OSFastMutex_Lock (int *) ;
 int OSFastMutex_Unlock (int *) ;
 TYPE_3__ adapters ;
 int wiiu_poll_adapter (TYPE_1__*) ;

__attribute__((used)) static void wiiu_poll_adapters(wiiu_hid_t *hid)
{
   wiiu_adapter_t *it;
   OSFastMutex_Lock(&(adapters.lock));

   for (it = adapters.list; it != ((void*)0); it = it->next)
   {
      if (it->state == ADAPTER_STATE_READY)
         wiiu_poll_adapter(it);

      if (it->state == ADAPTER_STATE_DONE)
         it->state = ADAPTER_STATE_GC;
   }

   OSFastMutex_Unlock(&(adapters.lock));
}
