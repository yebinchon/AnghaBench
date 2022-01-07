
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int menu_left_thumbnails; int menu_thumbnails; } ;
struct TYPE_7__ {TYPE_1__ uints; } ;
typedef TYPE_2__ settings_t ;
struct TYPE_8__ {int playlist_left_mode; int playlist_right_mode; } ;
typedef TYPE_3__ menu_thumbnail_path_data_t ;
typedef enum menu_thumbnail_id { ____Placeholder_menu_thumbnail_id } menu_thumbnail_id ;




 int PLAYLIST_THUMBNAIL_MODE_DEFAULT ;
 int PLAYLIST_THUMBNAIL_MODE_OFF ;
 TYPE_2__* config_get_ptr () ;

bool menu_thumbnail_is_enabled(menu_thumbnail_path_data_t *path_data, enum menu_thumbnail_id thumbnail_id)
{
   settings_t *settings = config_get_ptr();

   if (!path_data || !settings)
      return 0;

   switch (thumbnail_id)
   {
      case 128:
         if (path_data->playlist_right_mode != PLAYLIST_THUMBNAIL_MODE_DEFAULT)
            return path_data->playlist_right_mode != PLAYLIST_THUMBNAIL_MODE_OFF;
         return settings->uints.menu_thumbnails != 0;
      case 129:
         if (path_data->playlist_left_mode != PLAYLIST_THUMBNAIL_MODE_DEFAULT)
            return path_data->playlist_left_mode != PLAYLIST_THUMBNAIL_MODE_OFF;
         return settings->uints.menu_left_thumbnails != 0;
      default:
         break;
   }

   return 0;
}
