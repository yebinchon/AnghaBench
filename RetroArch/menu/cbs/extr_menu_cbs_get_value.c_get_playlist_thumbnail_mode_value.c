
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int playlist_t ;
typedef enum playlist_thumbnail_mode { ____Placeholder_playlist_thumbnail_mode } playlist_thumbnail_mode ;
typedef enum playlist_thumbnail_id { ____Placeholder_playlist_thumbnail_id } playlist_thumbnail_id ;


 int MENU_ENUM_LABEL_VALUE_OFF ;
 int MENU_ENUM_LABEL_VALUE_PLAYLIST_MANAGER_THUMBNAIL_MODE_DEFAULT ;
 int MENU_ENUM_LABEL_VALUE_THUMBNAIL_MODE_BOXARTS ;
 int MENU_ENUM_LABEL_VALUE_THUMBNAIL_MODE_SCREENSHOTS ;
 int MENU_ENUM_LABEL_VALUE_THUMBNAIL_MODE_TITLE_SCREENS ;




 char const* msg_hash_to_str (int ) ;
 int playlist_get_thumbnail_mode (int *,int) ;

__attribute__((used)) static const char *get_playlist_thumbnail_mode_value(playlist_t *playlist, enum playlist_thumbnail_id thumbnail_id)
{
   enum playlist_thumbnail_mode thumbnail_mode =
         playlist_get_thumbnail_mode(playlist, thumbnail_id);

   switch (thumbnail_mode)
   {
      case 130:
         return msg_hash_to_str(MENU_ENUM_LABEL_VALUE_OFF);
      case 129:
         return msg_hash_to_str(MENU_ENUM_LABEL_VALUE_THUMBNAIL_MODE_SCREENSHOTS);
      case 128:
         return msg_hash_to_str(MENU_ENUM_LABEL_VALUE_THUMBNAIL_MODE_TITLE_SCREENS);
      case 131:
         return msg_hash_to_str(MENU_ENUM_LABEL_VALUE_THUMBNAIL_MODE_BOXARTS);
      default:

         break;
   }

   return msg_hash_to_str(MENU_ENUM_LABEL_VALUE_PLAYLIST_MANAGER_THUMBNAIL_MODE_DEFAULT);
}
