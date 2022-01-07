
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int enabled; int texture_index; int type; } ;
struct TYPE_7__ {int enabled; int texture_index; int type; } ;
struct TYPE_10__ {int menu_navigation_wrapped; int location; scalar_t__ last_active_menu_tab_index; scalar_t__ active_menu_tab_index; scalar_t__ num_menu_tabs; TYPE_3__* menu_tabs; TYPE_2__ resume_tab; TYPE_1__ back_tab; } ;
struct TYPE_11__ {TYPE_4__ nav_bar; } ;
typedef TYPE_5__ materialui_handle_t ;
struct TYPE_9__ {int active; scalar_t__ texture_index; int type; } ;


 int MUI_NAV_BAR_ACTION_TAB_BACK ;
 int MUI_NAV_BAR_ACTION_TAB_RESUME ;
 int MUI_NAV_BAR_LOCATION_BOTTOM ;
 int MUI_NAV_BAR_MENU_TAB_NONE ;
 unsigned int MUI_NAV_BAR_NUM_MENU_TABS_MAX ;
 int MUI_TEXTURE_TAB_BACK ;
 int MUI_TEXTURE_TAB_RESUME ;

__attribute__((used)) static void materialui_init_nav_bar(materialui_handle_t *mui)
{


   unsigned i;


   mui->nav_bar.back_tab.type = MUI_NAV_BAR_ACTION_TAB_BACK;
   mui->nav_bar.back_tab.texture_index = MUI_TEXTURE_TAB_BACK;
   mui->nav_bar.back_tab.enabled = 0;


   mui->nav_bar.resume_tab.type = MUI_NAV_BAR_ACTION_TAB_RESUME;
   mui->nav_bar.resume_tab.texture_index = MUI_TEXTURE_TAB_RESUME;
   mui->nav_bar.resume_tab.enabled = 0;


   for (i = 0; i < MUI_NAV_BAR_NUM_MENU_TABS_MAX; i++)
   {
      mui->nav_bar.menu_tabs[i].type = MUI_NAV_BAR_MENU_TAB_NONE;
      mui->nav_bar.menu_tabs[i].texture_index = 0;
      mui->nav_bar.menu_tabs[i].active = 0;
   }


   mui->nav_bar.num_menu_tabs = 0;
   mui->nav_bar.active_menu_tab_index = 0;
   mui->nav_bar.last_active_menu_tab_index = 0;
   mui->nav_bar.menu_navigation_wrapped = 0;
   mui->nav_bar.location = MUI_NAV_BAR_LOCATION_BOTTOM;
}
