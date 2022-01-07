
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ state; struct TYPE_4__* next; } ;
typedef TYPE_1__ wiiu_adapter_t ;
struct TYPE_5__ {TYPE_1__* list; } ;
typedef int OSThread ;


 scalar_t__ ADAPTER_STATE_READING ;
 int RARCH_LOG (char*) ;
 int RARCH_WARN (char*) ;
 TYPE_3__ adapters ;
 int delete_adapter (TYPE_1__*) ;
 int usleep (int) ;

__attribute__((used)) static void wiiu_hid_polling_thread_cleanup(OSThread *thread, void *stack)
{
   int incomplete = 0;
   int retries = 0;
   wiiu_adapter_t *adapter = ((void*)0);

   RARCH_LOG("Waiting for in-flight reads to finish.\n");




   do
   {
      incomplete = 0;
      for (adapter = adapters.list; adapter != ((void*)0); adapter = adapter->next)
      {
         if (adapter->state == ADAPTER_STATE_READING)
            incomplete++;
      }

      if (incomplete == 0)
      {
         RARCH_LOG("All in-flight reads complete.\n");
         while(adapters.list != ((void*)0))
         {
            RARCH_LOG("[hid]: shutting down adapter..\n");
            adapter = adapters.list;
            adapters.list = adapter->next;
            delete_adapter(adapter);
         }
      }

      if (incomplete)
         usleep(5000);

      if (++retries >= 1000)
      {
         RARCH_WARN("[hid]: timed out waiting for in-flight read to finish.\n");
         incomplete = 0;
      }
   } while(incomplete);
}
