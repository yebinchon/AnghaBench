
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ content_favorites_size; } ;
struct TYPE_7__ {unsigned int content_history_size; } ;
struct TYPE_9__ {TYPE_2__ ints; TYPE_1__ uints; } ;
typedef TYPE_3__ settings_t ;
struct TYPE_10__ {char* db_playlist_file; } ;
typedef TYPE_4__ menu_handle_t ;


 unsigned int COLLECTION_SIZE ;
 int FILE_PATH_CONTENT_FAVORITES ;
 int FILE_PATH_CONTENT_HISTORY ;
 int FILE_PATH_CONTENT_IMAGE_HISTORY ;
 int FILE_PATH_CONTENT_MUSIC_HISTORY ;
 int FILE_PATH_CONTENT_VIDEO_HISTORY ;
 TYPE_3__* config_get_ptr () ;
 int file_path_str (int ) ;
 char* path_basename (char const*) ;
 int playlist_free_cached () ;
 scalar_t__ playlist_get_cached () ;
 scalar_t__ playlist_init_cached (char const*,unsigned int) ;
 int string_is_empty (char const*) ;
 scalar_t__ string_is_equal (char const*,int ) ;
 int strlcpy (char*,char const*,int) ;

__attribute__((used)) static void menu_displaylist_set_new_playlist(
      menu_handle_t *menu, const char *path)
{
   unsigned playlist_size = COLLECTION_SIZE;
   const char *playlist_file_name = path_basename(path);
   settings_t *settings = config_get_ptr();

   menu->db_playlist_file[0] = '\0';

   if (playlist_get_cached())
      playlist_free_cached();


   if (settings && !string_is_empty(playlist_file_name))
   {
      if (string_is_equal(playlist_file_name, file_path_str(FILE_PATH_CONTENT_HISTORY)) ||
          string_is_equal(playlist_file_name, file_path_str(FILE_PATH_CONTENT_MUSIC_HISTORY)) ||
          string_is_equal(playlist_file_name, file_path_str(FILE_PATH_CONTENT_VIDEO_HISTORY)) ||
          string_is_equal(playlist_file_name, file_path_str(FILE_PATH_CONTENT_IMAGE_HISTORY)))
         playlist_size = settings->uints.content_history_size;
      else if (string_is_equal(playlist_file_name, file_path_str(FILE_PATH_CONTENT_FAVORITES)))
         if (settings->ints.content_favorites_size >= 0)
            playlist_size = (unsigned)settings->ints.content_favorites_size;
   }

   if (playlist_init_cached(path, playlist_size))
      strlcpy(
            menu->db_playlist_file,
            path,
            sizeof(menu->db_playlist_file));
}
