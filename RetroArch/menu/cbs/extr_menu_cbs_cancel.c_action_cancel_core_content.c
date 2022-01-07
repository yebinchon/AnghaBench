
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MENU_ENUM_LABEL_ADD_CONTENT_LIST ;
 int MENU_ENUM_LABEL_DEFERRED_CORE_CONTENT_DIRS_LIST ;
 int MENU_ENUM_LABEL_DEFERRED_CORE_CONTENT_LIST ;
 int MENU_ENUM_LABEL_DEFERRED_CORE_UPDATER_LIST ;
 int MENU_ENUM_LABEL_DOWNLOAD_CORE_CONTENT_DIRS ;
 int MENU_ENUM_LABEL_ONLINE_UPDATER ;
 int menu_entries_flush_stack (int ,int ) ;
 int menu_entries_get_last_stack (int *,char const**,int *,int *,int *) ;
 int msg_hash_to_str (int ) ;
 scalar_t__ string_is_equal (char const*,int ) ;

__attribute__((used)) static int action_cancel_core_content(const char *path,
      const char *label, unsigned type, size_t idx)
{
   const char *menu_label = ((void*)0);

   menu_entries_get_last_stack(((void*)0), &menu_label, ((void*)0), ((void*)0), ((void*)0));

   if (string_is_equal(menu_label, msg_hash_to_str(MENU_ENUM_LABEL_DEFERRED_CORE_UPDATER_LIST)))
      menu_entries_flush_stack(msg_hash_to_str(MENU_ENUM_LABEL_ONLINE_UPDATER), 0);
   else if (string_is_equal(menu_label, msg_hash_to_str(MENU_ENUM_LABEL_DEFERRED_CORE_CONTENT_DIRS_LIST)))
      menu_entries_flush_stack(msg_hash_to_str(MENU_ENUM_LABEL_ONLINE_UPDATER), 0);
   else if (string_is_equal(menu_label, msg_hash_to_str(MENU_ENUM_LABEL_DOWNLOAD_CORE_CONTENT_DIRS)))
      menu_entries_flush_stack(msg_hash_to_str(MENU_ENUM_LABEL_ONLINE_UPDATER), 0);
   else if (string_is_equal(menu_label, msg_hash_to_str(MENU_ENUM_LABEL_DEFERRED_CORE_CONTENT_LIST)))
      menu_entries_flush_stack(msg_hash_to_str(MENU_ENUM_LABEL_ONLINE_UPDATER), 0);
   else
      menu_entries_flush_stack(msg_hash_to_str(MENU_ENUM_LABEL_ADD_CONTENT_LIST), 0);

   return 0;
}
