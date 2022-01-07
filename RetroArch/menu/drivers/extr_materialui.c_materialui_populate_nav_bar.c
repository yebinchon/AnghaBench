
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_12__ {scalar_t__ menu_content_show_playlists; } ;
struct TYPE_15__ {TYPE_3__ bools; } ;
typedef TYPE_6__ settings_t ;
typedef int menu_handle_t ;
struct TYPE_11__ {int enabled; } ;
struct TYPE_10__ {int enabled; } ;
struct TYPE_14__ {unsigned int last_active_menu_tab_index; unsigned int active_menu_tab_index; unsigned int num_menu_tabs; TYPE_4__* menu_tabs; TYPE_2__ resume_tab; TYPE_1__ back_tab; } ;
struct TYPE_16__ {TYPE_5__ nav_bar; } ;
typedef TYPE_7__ materialui_handle_t ;
struct TYPE_13__ {void* active; int texture_index; int type; } ;


 int MENU_ENTRIES_CTL_SHOW_BACK ;
 int MENU_ENUM_LABEL_MAIN_MENU ;
 int MENU_ENUM_LABEL_PLAYLISTS_TAB ;
 int MENU_ENUM_LABEL_SETTINGS_TAB ;
 int MUI_NAV_BAR_MENU_TAB_MAIN ;
 int MUI_NAV_BAR_MENU_TAB_PLAYLISTS ;
 int MUI_NAV_BAR_MENU_TAB_SETTINGS ;
 int MUI_TEXTURE_TAB_MAIN ;
 int MUI_TEXTURE_TAB_PLAYLISTS ;
 int MUI_TEXTURE_TAB_SETTINGS ;
 int RARCH_CTL_IS_DUMMY_CORE ;
 int * menu_driver_get_ptr () ;
 int menu_entries_ctl (int ,int *) ;
 int msg_hash_to_str (int ) ;
 int rarch_ctl (int ,int *) ;
 void* string_is_equal (char const*,int ) ;

__attribute__((used)) static void materialui_populate_nav_bar(
      materialui_handle_t *mui, const char *label, settings_t *settings)
{
   menu_handle_t *menu_data = menu_driver_get_ptr();
   unsigned menu_tab_index = 0;
   bool content_loaded = 0;


   mui->nav_bar.last_active_menu_tab_index = mui->nav_bar.active_menu_tab_index;


   mui->nav_bar.back_tab.enabled = menu_entries_ctl(MENU_ENTRIES_CTL_SHOW_BACK, ((void*)0));





   mui->nav_bar.resume_tab.enabled = !rarch_ctl(RARCH_CTL_IS_DUMMY_CORE, ((void*)0));




   mui->nav_bar.menu_tabs[menu_tab_index].type =
         MUI_NAV_BAR_MENU_TAB_MAIN;
   mui->nav_bar.menu_tabs[menu_tab_index].texture_index =
         MUI_TEXTURE_TAB_MAIN;
   mui->nav_bar.menu_tabs[menu_tab_index].active =
         string_is_equal(label, msg_hash_to_str(MENU_ENUM_LABEL_MAIN_MENU));

   if(mui->nav_bar.menu_tabs[menu_tab_index].active)
      mui->nav_bar.active_menu_tab_index = menu_tab_index;

   menu_tab_index++;


   if (settings->bools.menu_content_show_playlists)
   {
      mui->nav_bar.menu_tabs[menu_tab_index].type =
            MUI_NAV_BAR_MENU_TAB_PLAYLISTS;
      mui->nav_bar.menu_tabs[menu_tab_index].texture_index =
            MUI_TEXTURE_TAB_PLAYLISTS;
      mui->nav_bar.menu_tabs[menu_tab_index].active =
            string_is_equal(label, msg_hash_to_str(MENU_ENUM_LABEL_PLAYLISTS_TAB));

      if(mui->nav_bar.menu_tabs[menu_tab_index].active)
         mui->nav_bar.active_menu_tab_index = menu_tab_index;

      menu_tab_index++;
   }


   mui->nav_bar.menu_tabs[menu_tab_index].type =
         MUI_NAV_BAR_MENU_TAB_SETTINGS;
   mui->nav_bar.menu_tabs[menu_tab_index].texture_index =
         MUI_TEXTURE_TAB_SETTINGS;
   mui->nav_bar.menu_tabs[menu_tab_index].active =
         string_is_equal(label, msg_hash_to_str(MENU_ENUM_LABEL_SETTINGS_TAB));

   if(mui->nav_bar.menu_tabs[menu_tab_index].active)
      mui->nav_bar.active_menu_tab_index = menu_tab_index;

   menu_tab_index++;


   mui->nav_bar.num_menu_tabs = menu_tab_index;
}
