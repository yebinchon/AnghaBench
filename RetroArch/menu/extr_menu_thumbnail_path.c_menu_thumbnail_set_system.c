
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int tmp ;
typedef int playlist_t ;
struct TYPE_3__ {char* right_path; char* left_path; char* system; void* playlist_left_mode; void* playlist_right_mode; } ;
typedef TYPE_1__ menu_thumbnail_path_data_t ;


 int FILE_PATH_CONTENT_FAVORITES ;
 int FILE_PATH_CONTENT_HISTORY ;
 int PATH_MAX_LENGTH ;
 int PLAYLIST_THUMBNAIL_LEFT ;
 void* PLAYLIST_THUMBNAIL_MODE_DEFAULT ;
 int PLAYLIST_THUMBNAIL_RIGHT ;
 char const* file_path_str (int ) ;
 char* path_basename (char const*) ;
 char* path_remove_extension (char*) ;
 char* playlist_get_conf_path (int *) ;
 void* playlist_get_thumbnail_mode (int *,int ) ;
 scalar_t__ string_is_empty (char const*) ;
 int string_is_equal (char const*,char const*) ;
 int strlcpy (char*,char const*,int) ;
 scalar_t__ strncmp (char const*,char*,int) ;

bool menu_thumbnail_set_system(menu_thumbnail_path_data_t *path_data,
      const char *system, playlist_t *playlist)
{
   if (!path_data)
      return 0;



   path_data->right_path[0] = '\0';
   path_data->left_path[0] = '\0';


   path_data->system[0] = '\0';


   path_data->playlist_right_mode = PLAYLIST_THUMBNAIL_MODE_DEFAULT;
   path_data->playlist_left_mode = PLAYLIST_THUMBNAIL_MODE_DEFAULT;

   if (string_is_empty(system))
      return 0;



   if (strncmp(system, "MAME", 4) == 0)
      strlcpy(path_data->system, "MAME", sizeof(path_data->system));
   else
      strlcpy(path_data->system, system, sizeof(path_data->system));




   if (playlist)
   {
      const char *playlist_path = playlist_get_conf_path(playlist);
      const char *playlist_file = ((void*)0);
      bool playlist_valid = 0;



      if (string_is_empty(playlist_path))
         return 1;

      playlist_file = path_basename(playlist_path);



      if (string_is_empty(playlist_file))
         return 1;


      playlist_valid =
            (string_is_equal(system, "history") &&
             string_is_equal(playlist_file,
                file_path_str(FILE_PATH_CONTENT_HISTORY))) ||
            (string_is_equal(system, "favorites") &&
             string_is_equal(playlist_file,
                file_path_str(FILE_PATH_CONTENT_FAVORITES)));

      if (!playlist_valid)
      {



         char *playlist_name = ((void*)0);
         char tmp[PATH_MAX_LENGTH];

         tmp[0] = '\0';

         strlcpy(tmp, playlist_file, sizeof(tmp));
         playlist_name = path_remove_extension(tmp);
         playlist_valid = string_is_equal(playlist_name, system);
      }


      if (playlist_valid)
      {
         path_data->playlist_right_mode =
               playlist_get_thumbnail_mode(playlist, PLAYLIST_THUMBNAIL_RIGHT);
         path_data->playlist_left_mode =
               playlist_get_thumbnail_mode(playlist, PLAYLIST_THUMBNAIL_LEFT);
      }
   }

   return 1;
}
