
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int polling_thread_quit; } ;
typedef TYPE_1__ wiiu_hid_t ;


 int RARCH_LOG (char*) ;
 int synchronized_get_events_list () ;
 int wiiu_handle_attach_events (TYPE_1__*,int ) ;
 int wiiu_poll_adapters (TYPE_1__*) ;

__attribute__((used)) static int wiiu_hid_polling_thread(int argc, const char **argv)
{
   wiiu_hid_t *hid = (wiiu_hid_t *)argv;

   RARCH_LOG("[hid]: polling thread is starting\n");

   while(!hid->polling_thread_quit)
   {
      wiiu_handle_attach_events(hid, synchronized_get_events_list());
      wiiu_poll_adapters(hid);
   }

   RARCH_LOG("[hid]: polling thread is stopping\n");
   return 0;
}
