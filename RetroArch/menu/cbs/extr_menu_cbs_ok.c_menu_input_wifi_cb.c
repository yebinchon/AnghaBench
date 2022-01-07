
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int driver_wifi_connect_ssid (unsigned int,char const*) ;
 int menu_input_dialog_end () ;
 unsigned int menu_input_dialog_get_kb_idx () ;

__attribute__((used)) static void menu_input_wifi_cb(void *userdata, const char *passphrase)
{
   unsigned idx = menu_input_dialog_get_kb_idx();

   driver_wifi_connect_ssid(idx, passphrase);

   menu_input_dialog_end();
}
