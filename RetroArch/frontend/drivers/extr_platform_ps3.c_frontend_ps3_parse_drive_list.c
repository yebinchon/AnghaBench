
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int file_list_t ;
typedef enum msg_hash_enums { ____Placeholder_msg_hash_enums } msg_hash_enums ;


 int FILE_TYPE_DIRECTORY ;
 int MENU_ENUM_LABEL_FILE_DETECT_CORE_LIST_PUSH_DIR ;
 int MSG_UNKNOWN ;
 int menu_entries_append_enum (int *,char*,int ,int,int ,int ,int ) ;
 int msg_hash_to_str (int) ;

__attribute__((used)) static int frontend_ps3_parse_drive_list(void *data, bool load_content)
{

   file_list_t *list = (file_list_t*)data;
   enum msg_hash_enums enum_idx = load_content ?
      MENU_ENUM_LABEL_FILE_DETECT_CORE_LIST_PUSH_DIR :
      MSG_UNKNOWN;

   menu_entries_append_enum(list,
         "/app_home/",
         msg_hash_to_str(MENU_ENUM_LABEL_FILE_DETECT_CORE_LIST_PUSH_DIR),
         enum_idx,
         FILE_TYPE_DIRECTORY, 0, 0);
   menu_entries_append_enum(list,
         "/dev_hdd0/",
         msg_hash_to_str(MENU_ENUM_LABEL_FILE_DETECT_CORE_LIST_PUSH_DIR),
         enum_idx,
         FILE_TYPE_DIRECTORY, 0, 0);
   menu_entries_append_enum(list,
         "/dev_hdd1/",
         msg_hash_to_str(MENU_ENUM_LABEL_FILE_DETECT_CORE_LIST_PUSH_DIR),
         enum_idx,
         FILE_TYPE_DIRECTORY, 0, 0);
   menu_entries_append_enum(list,
         "/dev_bdvd/",
         msg_hash_to_str(MENU_ENUM_LABEL_FILE_DETECT_CORE_LIST_PUSH_DIR),
         enum_idx,
         FILE_TYPE_DIRECTORY, 0, 0);
   menu_entries_append_enum(list,
         "/host_root/",
         msg_hash_to_str(MENU_ENUM_LABEL_FILE_DETECT_CORE_LIST_PUSH_DIR),
         enum_idx,
         FILE_TYPE_DIRECTORY, 0, 0);
   menu_entries_append_enum(list,
         "/dev_usb000/",
         msg_hash_to_str(MENU_ENUM_LABEL_FILE_DETECT_CORE_LIST_PUSH_DIR),
         enum_idx,
         FILE_TYPE_DIRECTORY, 0, 0);
   menu_entries_append_enum(list,
         "/dev_usb001/",
         msg_hash_to_str(MENU_ENUM_LABEL_FILE_DETECT_CORE_LIST_PUSH_DIR),
         enum_idx,
         FILE_TYPE_DIRECTORY, 0, 0);
   menu_entries_append_enum(list,
         "/dev_usb002/",
         msg_hash_to_str(MENU_ENUM_LABEL_FILE_DETECT_CORE_LIST_PUSH_DIR),
         enum_idx,
         FILE_TYPE_DIRECTORY, 0, 0);
   menu_entries_append_enum(list,
         "/dev_usb003/",
         msg_hash_to_str(MENU_ENUM_LABEL_FILE_DETECT_CORE_LIST_PUSH_DIR),
         enum_idx,
         FILE_TYPE_DIRECTORY, 0, 0);
   menu_entries_append_enum(list,
         "/dev_usb004/",
         msg_hash_to_str(MENU_ENUM_LABEL_FILE_DETECT_CORE_LIST_PUSH_DIR),
         enum_idx,
         FILE_TYPE_DIRECTORY, 0, 0);
   menu_entries_append_enum(list,
         "/dev_usb005/",
         msg_hash_to_str(MENU_ENUM_LABEL_FILE_DETECT_CORE_LIST_PUSH_DIR),
         enum_idx,
         FILE_TYPE_DIRECTORY, 0, 0);
   menu_entries_append_enum(list,
         "/dev_usb006/",
         msg_hash_to_str(MENU_ENUM_LABEL_FILE_DETECT_CORE_LIST_PUSH_DIR),
         enum_idx,
         FILE_TYPE_DIRECTORY, 0, 0);


   return 0;
}
