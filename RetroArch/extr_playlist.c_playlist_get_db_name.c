
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int conf_path; TYPE_1__* entries; } ;
typedef TYPE_2__ playlist_t ;
struct TYPE_4__ {char const* db_name; } ;


 int FILE_PATH_CONTENT_FAVORITES ;
 int FILE_PATH_CONTENT_HISTORY ;
 int FILE_PATH_CONTENT_IMAGE_HISTORY ;
 int FILE_PATH_CONTENT_MUSIC_HISTORY ;
 int FILE_PATH_CONTENT_VIDEO_HISTORY ;
 int file_path_str (int ) ;
 char* path_basename (int ) ;
 int string_is_empty (char const*) ;
 int string_is_equal (char const*,int ) ;

void playlist_get_db_name(playlist_t *playlist, size_t idx,
      const char **db_name)
{
   if (!playlist)
      return;

   if (db_name)
   {
      if (!string_is_empty(playlist->entries[idx].db_name))
         *db_name = playlist->entries[idx].db_name;
      else
      {
         const char *conf_path_basename = path_basename(playlist->conf_path);



         if (!string_is_empty(conf_path_basename) &&
             !string_is_equal(conf_path_basename, file_path_str(FILE_PATH_CONTENT_FAVORITES)) &&
             !string_is_equal(conf_path_basename, file_path_str(FILE_PATH_CONTENT_HISTORY)) &&
             !string_is_equal(conf_path_basename, file_path_str(FILE_PATH_CONTENT_IMAGE_HISTORY)) &&
             !string_is_equal(conf_path_basename, file_path_str(FILE_PATH_CONTENT_MUSIC_HISTORY)) &&
             !string_is_equal(conf_path_basename, file_path_str(FILE_PATH_CONTENT_VIDEO_HISTORY)))
            *db_name = conf_path_basename;
      }
   }
}
