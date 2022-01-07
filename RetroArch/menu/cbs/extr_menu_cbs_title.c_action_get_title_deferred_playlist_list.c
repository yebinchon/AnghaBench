
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int playlist_name ;


 int FILE_PATH_CONTENT_FAVORITES ;
 int FILE_PATH_CONTENT_HISTORY ;
 int MENU_ENUM_LABEL_VALUE_FAVORITES_TAB ;
 int MENU_ENUM_LABEL_VALUE_HISTORY_TAB ;
 int PATH_MAX_LENGTH ;
 int file_path_str (int ) ;
 char const* msg_hash_to_str (int ) ;
 char* path_basename (char const*) ;
 int path_get_extension (char const*) ;
 int path_remove_extension (char*) ;
 scalar_t__ string_is_empty (char const*) ;
 scalar_t__ string_is_equal (char const*,int ) ;
 scalar_t__ string_is_equal_noncase (int ,char*) ;
 int strlcpy (char*,char const*,size_t) ;

__attribute__((used)) static int action_get_title_deferred_playlist_list(const char *path, const char *label, unsigned menu_type, char *s, size_t len)
{
   const char *playlist_file = ((void*)0);

   if (string_is_empty(path))
      return 0;

   playlist_file = path_basename(path);

   if (string_is_empty(playlist_file))
      return 0;

   if (string_is_equal_noncase(path_get_extension(playlist_file),
            "lpl"))
   {

      if (string_is_equal(playlist_file, file_path_str(FILE_PATH_CONTENT_HISTORY)))
         strlcpy(s, msg_hash_to_str(MENU_ENUM_LABEL_VALUE_HISTORY_TAB), len);

      else if (string_is_equal(playlist_file, file_path_str(FILE_PATH_CONTENT_FAVORITES)))
         strlcpy(s, msg_hash_to_str(MENU_ENUM_LABEL_VALUE_FAVORITES_TAB), len);

      else
      {
         char playlist_name[PATH_MAX_LENGTH];

         playlist_name[0] = '\0';

         strlcpy(playlist_name, playlist_file, sizeof(playlist_name));
         path_remove_extension(playlist_name);

         strlcpy(s, playlist_name, len);
      }
   }


   else
      strlcpy(s, playlist_file, len);

   return 0;
}
