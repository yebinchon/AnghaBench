
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fullpath ;
typedef int file_list_t ;


 int CORE_TYPE_IMAGEVIEWER ;
 int PATH_MAX_LENGTH ;
 int default_action_ok_load_content_with_core_from_menu (char*,int ) ;
 int file_list_get_last (int *,char const**,int *,int *,int *) ;
 int fill_pathname_join (char*,char const*,char const*,int) ;
 int * menu_entries_get_menu_stack_ptr (int ) ;
 int string_is_empty (char const*) ;

__attribute__((used)) static int action_ok_file_load_imageviewer(const char *path,
      const char *label, unsigned type, size_t idx, size_t entry_idx)
{
   char fullpath[PATH_MAX_LENGTH];
   const char *menu_path = ((void*)0);
   file_list_t *menu_stack = menu_entries_get_menu_stack_ptr(0);

   file_list_get_last(menu_stack, &menu_path, ((void*)0), ((void*)0), ((void*)0));

   fullpath[0] = '\0';

   if (!string_is_empty(menu_path))
      fill_pathname_join(fullpath, menu_path, path,
            sizeof(fullpath));

   return default_action_ok_load_content_with_core_from_menu(fullpath, CORE_TYPE_IMAGEVIEWER);
}
