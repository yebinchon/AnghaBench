
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int playlist_t ;
typedef int file_list_t ;
typedef enum playlist_thumbnail_mode { ____Placeholder_playlist_thumbnail_mode } playlist_thumbnail_mode ;
typedef enum playlist_thumbnail_id { ____Placeholder_playlist_thumbnail_id } playlist_thumbnail_id ;
typedef enum msg_hash_enums { ____Placeholder_msg_hash_enums } msg_hash_enums ;
typedef enum menu_settings_type { ____Placeholder_menu_settings_type } menu_settings_type ;


 int MENU_ENUM_LABEL_NO_ITEMS ;
 int MENU_ENUM_LABEL_VALUE_OFF ;
 int MENU_ENUM_LABEL_VALUE_PLAYLIST_MANAGER_THUMBNAIL_MODE_DEFAULT ;
 int MENU_ENUM_LABEL_VALUE_THUMBNAIL_MODE_BOXARTS ;
 int MENU_ENUM_LABEL_VALUE_THUMBNAIL_MODE_SCREENSHOTS ;
 int MENU_ENUM_LABEL_VALUE_THUMBNAIL_MODE_TITLE_SCREENS ;
 int MENU_SETTING_DROPDOWN_ITEM_PLAYLIST_LEFT_THUMBNAIL_MODE ;
 int MENU_SETTING_DROPDOWN_ITEM_PLAYLIST_RIGHT_THUMBNAIL_MODE ;




 int PLAYLIST_THUMBNAIL_RIGHT ;
 scalar_t__ menu_entries_append_enum (int *,int ,char*,int ,int,int ,int ) ;
 int menu_entries_set_checked (int *,size_t,int) ;
 int msg_hash_to_str (int) ;
 int * playlist_get_cached () ;
 int playlist_get_thumbnail_mode (int *,int) ;

__attribute__((used)) static unsigned populate_playlist_thumbnail_mode_dropdown_list(
      file_list_t *list, enum playlist_thumbnail_id thumbnail_id)
{
   unsigned count = 0;
   playlist_t *playlist = playlist_get_cached();

   if (list && playlist)
   {
      size_t i;

      enum playlist_thumbnail_mode current_thumbnail_mode =
            playlist_get_thumbnail_mode(playlist, thumbnail_id);

      enum menu_settings_type settings_type =
            (thumbnail_id == PLAYLIST_THUMBNAIL_RIGHT) ?
                  MENU_SETTING_DROPDOWN_ITEM_PLAYLIST_RIGHT_THUMBNAIL_MODE :
                  MENU_SETTING_DROPDOWN_ITEM_PLAYLIST_LEFT_THUMBNAIL_MODE;


      for (i = 0; i <= (unsigned)131; i++)
      {
         enum msg_hash_enums label_value;
         enum playlist_thumbnail_mode thumbnail_mode =
               (enum playlist_thumbnail_mode)i;


         switch (thumbnail_mode)
         {
            case 130:
               label_value = MENU_ENUM_LABEL_VALUE_OFF;
               break;
            case 129:
               label_value = MENU_ENUM_LABEL_VALUE_THUMBNAIL_MODE_SCREENSHOTS;
               break;
            case 128:
               label_value = MENU_ENUM_LABEL_VALUE_THUMBNAIL_MODE_TITLE_SCREENS;
               break;
            case 131:
               label_value = MENU_ENUM_LABEL_VALUE_THUMBNAIL_MODE_BOXARTS;
               break;
            default:

               label_value = MENU_ENUM_LABEL_VALUE_PLAYLIST_MANAGER_THUMBNAIL_MODE_DEFAULT;
               break;
         }


         if (menu_entries_append_enum(list,
               msg_hash_to_str(label_value),
               "",
               MENU_ENUM_LABEL_NO_ITEMS,
               settings_type,
               0, 0))
            count++;


         if (current_thumbnail_mode == thumbnail_mode)
            menu_entries_set_checked(list, i, 1);
      }
   }

   return count;
}
