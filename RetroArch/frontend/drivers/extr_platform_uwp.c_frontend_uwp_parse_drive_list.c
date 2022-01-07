
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int file_list_t ;
typedef enum msg_hash_enums { ____Placeholder_msg_hash_enums } msg_hash_enums ;


 int FILE_TYPE_DIRECTORY ;
 int MENU_ENUM_LABEL_FILE_BROWSER_OPEN_PICKER ;
 int MENU_ENUM_LABEL_FILE_BROWSER_OPEN_UWP_PERMISSIONS ;
 int MENU_ENUM_LABEL_FILE_DETECT_CORE_LIST_PUSH_DIR ;
 int MENU_ENUM_LABEL_VALUE_FILE_BROWSER_OPEN_PICKER ;
 int MENU_ENUM_LABEL_VALUE_FILE_BROWSER_OPEN_UWP_PERMISSIONS ;
 int MENU_SETTING_ACTION ;
 int MSG_UNKNOWN ;
 int PATH_MAX_LENGTH ;
 int fill_pathname_home_dir (char*,int) ;
 int free (char*) ;
 scalar_t__ malloc (int) ;
 int menu_entries_append_enum (int *,char*,char*,int,int ,int ,int ) ;
 char* msg_hash_to_str (int) ;
 scalar_t__ string_is_equal (int ,char*) ;
 int uwp_device_family ;
 scalar_t__ uwp_drive_exists (char*) ;

__attribute__((used)) static int frontend_uwp_parse_drive_list(void *data, bool load_content)
{
   return 0;
}
