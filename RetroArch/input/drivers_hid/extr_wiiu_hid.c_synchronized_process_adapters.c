
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int wiiu_hid_t ;
struct TYPE_5__ {int state; struct TYPE_5__* next; } ;
typedef TYPE_1__ wiiu_adapter_t ;
struct TYPE_6__ {int lock; TYPE_1__* list; } ;







 int OSFastMutex_Lock (int *) ;
 int OSFastMutex_Unlock (int *) ;
 int RARCH_ERR (char*,int) ;
 TYPE_4__ adapters ;
 int delete_adapter (TYPE_1__*) ;
 int try_init_driver (TYPE_1__*) ;

__attribute__((used)) static void synchronized_process_adapters(wiiu_hid_t *hid)
{
   wiiu_adapter_t *adapter = ((void*)0);
   wiiu_adapter_t *prev = ((void*)0), *adapter_next = ((void*)0);
   bool keep_prev = 0;

   OSFastMutex_Lock(&(adapters.lock));

   for (adapter = adapters.list; adapter != ((void*)0); adapter = adapter_next)
   {
     adapter_next = adapter->next;

     switch(adapter->state)
     {
       case 130:
          adapter->state = try_init_driver(adapter);
          break;
       case 128:
       case 129:
       case 132:
          break;
       case 131:

          if (!prev)
             adapters.list = adapter->next;
          else
             prev->next = adapter->next;


          delete_adapter(adapter);

          keep_prev = 1;
          break;
       default:
          RARCH_ERR("[hid]: Invalid adapter state: %d\n", adapter->state);
          break;
     }
     prev = keep_prev ? prev : adapter;
     keep_prev = 0;
   }
   OSFastMutex_Unlock(&(adapters.lock));
}
