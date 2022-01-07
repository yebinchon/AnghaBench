
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int polling_thread_quit; int * polling_thread_stack; int * polling_thread; int * client; } ;
typedef TYPE_1__ wiiu_hid_t ;


 int HIDDelClient (int *) ;
 int OSJoinThread (int *,int*) ;
 int RARCH_LOG (char*) ;
 int free (int *) ;

__attribute__((used)) static void stop_polling_thread(wiiu_hid_t *hid)
{
   int thread_result = 0;
   RARCH_LOG("[hid]: stopping polling thread.\n");

   if (!hid || !hid->polling_thread)
      return;


   if (hid->client)
   {
     HIDDelClient(hid->client);
     hid->client = ((void*)0);
   }


   hid->polling_thread_quit = 1;

   OSJoinThread(hid->polling_thread, &thread_result);
   free(hid->polling_thread);
   free(hid->polling_thread_stack);
   hid->polling_thread = ((void*)0);
   hid->polling_thread_stack = ((void*)0);
}
