
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum msg_hash_enums { ____Placeholder_msg_hash_enums } msg_hash_enums ;


 int MENU_ENUM_LABEL_CB_CORE_CONTENT_DOWNLOAD ;
 int MSG_UNKNOWN ;
 int action_ok_download_generic (char const*,char const*,char const*,unsigned int,size_t,size_t,int ) ;
 int menu_entries_get_last_stack (char const**,char const**,int *,int*,int *) ;

__attribute__((used)) static int action_ok_core_content_download(const char *path,
      const char *label, unsigned type, size_t idx, size_t entry_idx)
{
   const char *menu_path = ((void*)0);
   const char *menu_label = ((void*)0);
   enum msg_hash_enums enum_idx = MSG_UNKNOWN;

   menu_entries_get_last_stack(&menu_path, &menu_label, ((void*)0), &enum_idx, ((void*)0));

   return action_ok_download_generic(path, label,
         menu_path, type, idx, entry_idx,
         MENU_ENUM_LABEL_CB_CORE_CONTENT_DOWNLOAD);
}
