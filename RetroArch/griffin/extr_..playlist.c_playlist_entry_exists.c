
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int real_search_path ;
struct TYPE_5__ {size_t size; TYPE_1__* entries; } ;
typedef TYPE_2__ playlist_t ;
struct TYPE_4__ {int path; } ;


 int PATH_MAX_LENGTH ;
 int path_resolve_realpath (char*,int,int) ;
 scalar_t__ playlist_path_equal (char*,int ) ;
 scalar_t__ string_is_empty (char const*) ;
 int strlcpy (char*,char const*,int) ;

bool playlist_entry_exists(playlist_t *playlist,
      const char *path,
      const char *crc32)
{
   size_t i;
   char real_search_path[PATH_MAX_LENGTH];

   real_search_path[0] = '\0';

   if (!playlist || string_is_empty(path))
      return 0;


   strlcpy(real_search_path, path, sizeof(real_search_path));
   path_resolve_realpath(real_search_path, sizeof(real_search_path), 1);

   for (i = 0; i < playlist->size; i++)
      if (playlist_path_equal(real_search_path, playlist->entries[i].path))
         return 1;

   return 0;
}
