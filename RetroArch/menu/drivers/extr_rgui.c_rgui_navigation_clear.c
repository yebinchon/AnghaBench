
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ scroll_y; } ;
typedef TYPE_1__ rgui_t ;


 int MENU_ENTRIES_CTL_SET_START ;
 int menu_entries_ctl (int ,size_t*) ;

__attribute__((used)) static void rgui_navigation_clear(void *data, bool pending_push)
{
   size_t start;
   rgui_t *rgui = (rgui_t*)data;
   if (!rgui)
      return;

   start = 0;
   menu_entries_ctl(MENU_ENTRIES_CTL_SET_START, &start);
   rgui->scroll_y = 0;
}
