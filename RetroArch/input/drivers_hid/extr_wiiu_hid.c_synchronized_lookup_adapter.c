
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ handle; struct TYPE_4__* next; } ;
typedef TYPE_1__ wiiu_adapter_t ;
typedef scalar_t__ uint32_t ;
struct TYPE_5__ {int lock; TYPE_1__* list; } ;


 int OSFastMutex_Lock (int *) ;
 int OSFastMutex_Unlock (int *) ;
 TYPE_3__ adapters ;

__attribute__((used)) static wiiu_adapter_t *synchronized_lookup_adapter(uint32_t handle)
{
   OSFastMutex_Lock(&(adapters.lock));
   wiiu_adapter_t *iterator;

   for (iterator = adapters.list; iterator != ((void*)0); iterator = iterator->next)
   {
      if (iterator->handle == handle)
         break;
   }
   OSFastMutex_Unlock(&(adapters.lock));

   return iterator;
}
