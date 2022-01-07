
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ menu_materialui_thumbnail_view_portrait; scalar_t__ menu_materialui_thumbnail_view_landscape; } ;
struct TYPE_11__ {TYPE_1__ uints; } ;
typedef TYPE_2__ settings_t ;
struct TYPE_12__ {int secondary_thumbnail_enabled; scalar_t__ list_view_type; int need_compute; scalar_t__ is_portrait; int primary_thumbnail_available; } ;
typedef TYPE_3__ materialui_handle_t ;


 scalar_t__ MATERIALUI_THUMBNAIL_VIEW_LANDSCAPE_LAST ;
 scalar_t__ MATERIALUI_THUMBNAIL_VIEW_PORTRAIT_LAST ;
 scalar_t__ MUI_LIST_VIEW_DEFAULT ;
 scalar_t__ MUI_LIST_VIEW_PLAYLIST ;
 int MUI_ONSCREEN_ENTRY_CENTRE ;
 TYPE_2__* config_get_ptr () ;
 int materialui_auto_select_onscreen_entry (TYPE_3__*,int ) ;
 int materialui_init_transition_animation (TYPE_3__*,TYPE_2__*) ;
 int materialui_reset_thumbnails () ;
 int materialui_update_list_view (TYPE_3__*) ;
 size_t menu_navigation_get_selection () ;

__attribute__((used)) static void materialui_switch_list_view(materialui_handle_t *mui)
{
   settings_t *settings = config_get_ptr();
   size_t selection = menu_navigation_get_selection();
   bool secondary_thumbnail_enabled_prev = mui->secondary_thumbnail_enabled;

   if (!settings)
      return;



   if ((mui->list_view_type == MUI_LIST_VIEW_DEFAULT) ||
       !mui->primary_thumbnail_available)
      return;






   materialui_auto_select_onscreen_entry(mui, MUI_ONSCREEN_ENTRY_CENTRE);


   if (mui->is_portrait)
   {
      settings->uints.menu_materialui_thumbnail_view_portrait++;

      if (settings->uints.menu_materialui_thumbnail_view_portrait >=
            MATERIALUI_THUMBNAIL_VIEW_PORTRAIT_LAST)
         settings->uints.menu_materialui_thumbnail_view_portrait = 0;
   }
   else
   {
      settings->uints.menu_materialui_thumbnail_view_landscape++;

      if (settings->uints.menu_materialui_thumbnail_view_landscape >=
            MATERIALUI_THUMBNAIL_VIEW_LANDSCAPE_LAST)
         settings->uints.menu_materialui_thumbnail_view_landscape = 0;
   }


   materialui_update_list_view(mui);







   if ((mui->list_view_type == MUI_LIST_VIEW_DEFAULT) ||
       (mui->list_view_type == MUI_LIST_VIEW_PLAYLIST) ||
       (secondary_thumbnail_enabled_prev && !mui->secondary_thumbnail_enabled))
      materialui_reset_thumbnails();



   materialui_init_transition_animation(mui, settings);

   mui->need_compute = 1;
}
