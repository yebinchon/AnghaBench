
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ menu_left_thumbnails; scalar_t__ menu_thumbnails; } ;
struct TYPE_7__ {TYPE_1__ uints; } ;
typedef TYPE_2__ settings_t ;
struct TYPE_8__ {int thumbnail_path_data; } ;
typedef TYPE_3__ materialui_handle_t ;


 int MENU_THUMBNAIL_LEFT ;
 scalar_t__ MUI_DEFAULT_SECONDARY_THUMBNAIL_FALLBACK_TYPE ;
 scalar_t__ MUI_DEFAULT_SECONDARY_THUMBNAIL_TYPE ;
 int menu_thumbnail_is_enabled (int ,int ) ;

__attribute__((used)) static bool materialui_force_enable_secondary_thumbnail(
      materialui_handle_t *mui, settings_t *settings)
{


   if (menu_thumbnail_is_enabled(
         mui->thumbnail_path_data, MENU_THUMBNAIL_LEFT))
      return 1;



   if (settings->uints.menu_left_thumbnails == 0)
   {






      if (settings->uints.menu_thumbnails ==
            MUI_DEFAULT_SECONDARY_THUMBNAIL_TYPE)
         settings->uints.menu_left_thumbnails =
               MUI_DEFAULT_SECONDARY_THUMBNAIL_FALLBACK_TYPE;
      else
         settings->uints.menu_left_thumbnails =
               MUI_DEFAULT_SECONDARY_THUMBNAIL_TYPE;
   }



   return menu_thumbnail_is_enabled(
         mui->thumbnail_path_data, MENU_THUMBNAIL_LEFT);
}
