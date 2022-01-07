
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int file_list_t ;


 int MENU_ENUM_LABEL_VALUE_DIRECTORY_DEFAULT ;
 int RARCH_PATH_CONFIG ;
 int fill_pathname_base (char*,int ,size_t) ;
 char const* msg_hash_to_str (int ) ;
 int path_get (int ) ;
 int path_is_empty (int ) ;
 int strlcpy (char*,char const*,size_t) ;

__attribute__((used)) static void menu_action_setting_disp_set_label_configurations(
      file_list_t* list,
      unsigned *w, unsigned type, unsigned i,
      const char *label,
      char *s, size_t len,
      const char *path,
      char *s2, size_t len2)
{
   *w = 19;
   strlcpy(s2, path, len2);

   if (!path_is_empty(RARCH_PATH_CONFIG))
      fill_pathname_base(s, path_get(RARCH_PATH_CONFIG),
            len);
   else
      strlcpy(s, msg_hash_to_str(MENU_ENUM_LABEL_VALUE_DIRECTORY_DEFAULT), len);
}
