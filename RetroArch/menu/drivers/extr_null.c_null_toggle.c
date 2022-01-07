
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int g_menu_on ;

__attribute__((used)) static void null_toggle(void *userdata, bool menu_on)
{
   (void)userdata;

   g_menu_on = menu_on;
}
