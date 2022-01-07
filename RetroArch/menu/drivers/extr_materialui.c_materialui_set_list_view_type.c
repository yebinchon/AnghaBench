
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int menu_materialui_thumbnail_view_portrait; int menu_materialui_thumbnail_view_landscape; } ;
struct TYPE_7__ {TYPE_1__ uints; } ;
typedef TYPE_2__ settings_t ;
struct TYPE_8__ {int primary_thumbnail_available; void* list_view_type; scalar_t__ is_portrait; int thumbnail_path_data; int is_playlist; } ;
typedef TYPE_3__ materialui_handle_t ;
 int MENU_THUMBNAIL_RIGHT ;
 void* MUI_LIST_VIEW_DEFAULT ;
 void* MUI_LIST_VIEW_PLAYLIST ;
 void* MUI_LIST_VIEW_PLAYLIST_THUMB_DUAL_ICON ;
 void* MUI_LIST_VIEW_PLAYLIST_THUMB_LIST_LARGE ;
 void* MUI_LIST_VIEW_PLAYLIST_THUMB_LIST_MEDIUM ;
 void* MUI_LIST_VIEW_PLAYLIST_THUMB_LIST_SMALL ;
 int menu_thumbnail_is_enabled (int ,int ) ;

__attribute__((used)) static void materialui_set_list_view_type(
      materialui_handle_t *mui, settings_t *settings)
{
   if (!mui->is_playlist)
   {



      mui->list_view_type = MUI_LIST_VIEW_DEFAULT;
      mui->primary_thumbnail_available = 0;
   }
   else
   {


      mui->list_view_type = MUI_LIST_VIEW_PLAYLIST;


      mui->primary_thumbnail_available =
            menu_thumbnail_is_enabled(mui->thumbnail_path_data, MENU_THUMBNAIL_RIGHT);

      if (mui->primary_thumbnail_available)
      {


         if (mui->is_portrait)
         {
            switch (settings->uints.menu_materialui_thumbnail_view_portrait)
            {
               case 128:
                  mui->list_view_type = MUI_LIST_VIEW_PLAYLIST_THUMB_LIST_SMALL;
                  break;
               case 129:
                  mui->list_view_type = MUI_LIST_VIEW_PLAYLIST_THUMB_LIST_MEDIUM;
                  break;
               case 130:
                  mui->list_view_type = MUI_LIST_VIEW_PLAYLIST_THUMB_DUAL_ICON;
                  break;
               case 131:
               default:
                  mui->list_view_type = MUI_LIST_VIEW_PLAYLIST;
                  break;
            }
         }
         else
         {
            switch (settings->uints.menu_materialui_thumbnail_view_landscape)
            {
               case 132:
                  mui->list_view_type = MUI_LIST_VIEW_PLAYLIST_THUMB_LIST_SMALL;
                  break;
               case 133:
                  mui->list_view_type = MUI_LIST_VIEW_PLAYLIST_THUMB_LIST_MEDIUM;
                  break;
               case 134:
                  mui->list_view_type = MUI_LIST_VIEW_PLAYLIST_THUMB_LIST_LARGE;
                  break;
               case 135:
               default:
                  mui->list_view_type = MUI_LIST_VIEW_PLAYLIST;
                  break;
            }
         }
      }
   }
}
