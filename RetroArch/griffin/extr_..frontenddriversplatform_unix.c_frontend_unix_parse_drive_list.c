
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int user_data_path ;
typedef int file_list_t ;
typedef enum msg_hash_enums { ____Placeholder_msg_hash_enums } msg_hash_enums ;
typedef int base_path ;


 int FILE_TYPE_DIRECTORY ;
 scalar_t__ INTERNAL_STORAGE_WRITABLE ;
 int MENU_ENUM_LABEL_FILE_DETECT_CORE_LIST_PUSH_DIR ;
 int MSG_APPLICATION_DIR ;
 int MSG_EXTERNAL_APPLICATION_DIR ;
 int MSG_INTERNAL_STORAGE ;
 int MSG_REMOVABLE_STORAGE ;
 int MSG_UNKNOWN ;
 int PATH_MAX ;
 int PATH_MAX_LENGTH ;
 char* app_dir ;
 int fill_pathname_join (char*,char*,char*,int) ;
 char* getenv (char*) ;
 char* internal_storage_app_path ;
 char* internal_storage_path ;
 int menu_entries_append_enum (int *,char const*,int ,int,int ,int ,int ) ;
 int msg_hash_to_str (int) ;
 scalar_t__ path_is_directory (char*) ;
 scalar_t__ storage_permissions ;
 int string_is_empty (char const*) ;
 int strlcat (char*,char*,int) ;
 int strlcpy (char*,char const*,int) ;

__attribute__((used)) static int frontend_unix_parse_drive_list(void *data, bool load_content)
{
   return 0;
}
