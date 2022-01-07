
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wiiu_hid_t ;


 int synchronized_process_adapters (int *) ;

__attribute__((used)) static void wiiu_hid_poll(void *data)
{
   wiiu_hid_t *hid = (wiiu_hid_t *)data;
   if (!hid)
      return;

   synchronized_process_adapters(hid);
}
