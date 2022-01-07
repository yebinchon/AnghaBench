
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int file_list_t ;
typedef enum msg_hash_enums { ____Placeholder_msg_hash_enums } msg_hash_enums ;


 int FILE_TYPE_DIRECTORY ;
 int MENU_ENUM_LABEL_FILE_DETECT_CORE_LIST_PUSH_DIR ;
 int MSG_UNKNOWN ;
 int WIIU_SD_PATH ;
 int WIIU_USB_PATH ;
 int menu_entries_append_enum (int *,int ,int ,int,int ,int ,int ) ;
 int msg_hash_to_str (int) ;

__attribute__((used)) static int frontend_wiiu_parse_drive_list(void *data, bool load_content)
{

   file_list_t *list = (file_list_t *)data;
   enum msg_hash_enums enum_idx = load_content ?
      MENU_ENUM_LABEL_FILE_DETECT_CORE_LIST_PUSH_DIR :
      MSG_UNKNOWN;

   if (!list)
      return -1;

   menu_entries_append_enum(list, WIIU_SD_PATH,
         msg_hash_to_str(MENU_ENUM_LABEL_FILE_DETECT_CORE_LIST_PUSH_DIR),
         enum_idx,
         FILE_TYPE_DIRECTORY, 0, 0);

   menu_entries_append_enum(list, WIIU_USB_PATH,
         msg_hash_to_str(MENU_ENUM_LABEL_FILE_DETECT_CORE_LIST_PUSH_DIR),
         enum_idx,
         FILE_TYPE_DIRECTORY, 0, 0);

   return 0;
}
