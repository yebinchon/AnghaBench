
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {unsigned int menu_thumbnails; unsigned int menu_left_thumbnails; } ;
struct TYPE_7__ {TYPE_1__ uints; } ;
typedef TYPE_2__ settings_t ;
struct TYPE_8__ {int playlist_left_mode; int playlist_right_mode; } ;
typedef TYPE_3__ menu_thumbnail_path_data_t ;
typedef enum menu_thumbnail_id { ____Placeholder_menu_thumbnail_id } menu_thumbnail_id ;


 int MENU_ENUM_LABEL_VALUE_OFF ;


 int PLAYLIST_THUMBNAIL_MODE_DEFAULT ;
 TYPE_2__* config_get_ptr () ;
 char const* msg_hash_to_str (int ) ;

const char *menu_thumbnail_get_type(menu_thumbnail_path_data_t *path_data, enum menu_thumbnail_id thumbnail_id)
{
   settings_t *settings = config_get_ptr();
   unsigned type = 0;

   if (!path_data || !settings)
      return msg_hash_to_str(MENU_ENUM_LABEL_VALUE_OFF);

   switch (thumbnail_id)
   {
      case 128:
         if (path_data->playlist_right_mode != PLAYLIST_THUMBNAIL_MODE_DEFAULT)
            type = (unsigned)path_data->playlist_right_mode - 1;
         else
            type = settings->uints.menu_thumbnails;
         break;
      case 129:
         if (path_data->playlist_left_mode != PLAYLIST_THUMBNAIL_MODE_DEFAULT)
            type = (unsigned)path_data->playlist_left_mode - 1;
         else
            type = settings->uints.menu_left_thumbnails;
         break;
      default:
         return msg_hash_to_str(MENU_ENUM_LABEL_VALUE_OFF);
   }

   switch (type)
   {
      case 1:
         return "Named_Snaps";
      case 2:
         return "Named_Titles";
      case 3:
         return "Named_Boxarts";
      case 0:
      default:
         break;
   }

   return msg_hash_to_str(MENU_ENUM_LABEL_VALUE_OFF);
}
