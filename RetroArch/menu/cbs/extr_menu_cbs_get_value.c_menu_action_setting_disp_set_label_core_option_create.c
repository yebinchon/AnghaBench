
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int file_list_t ;


 int RARCH_PATH_BASENAME ;
 char const* path_basename (int ) ;
 int path_get (int ) ;
 int string_is_empty (int ) ;
 int strlcpy (char*,char const*,size_t) ;

__attribute__((used)) static void menu_action_setting_disp_set_label_core_option_create(
      file_list_t* list,
      unsigned *w, unsigned type, unsigned i,
      const char *label,
      char *s, size_t len,
      const char *path,
      char *s2, size_t len2)
{
   *s = '\0';
   *w = 19;

   strlcpy(s, "", len);

   if (!string_is_empty(path_get(RARCH_PATH_BASENAME)))
      strlcpy(s, path_basename(path_get(RARCH_PATH_BASENAME)), len);

   strlcpy(s2, path, len2);
}
