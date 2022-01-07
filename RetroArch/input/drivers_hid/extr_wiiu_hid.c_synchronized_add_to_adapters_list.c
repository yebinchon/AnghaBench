
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* next; } ;
typedef TYPE_1__ wiiu_adapter_t ;
struct TYPE_5__ {int lock; TYPE_1__* list; } ;


 int OSFastMutex_Lock (int *) ;
 int OSFastMutex_Unlock (int *) ;
 TYPE_3__ adapters ;

__attribute__((used)) static void synchronized_add_to_adapters_list(wiiu_adapter_t *adapter)
{
   OSFastMutex_Lock(&(adapters.lock));
   adapter->next = adapters.list;
   adapters.list = adapter;
   OSFastMutex_Unlock(&(adapters.lock));
}
