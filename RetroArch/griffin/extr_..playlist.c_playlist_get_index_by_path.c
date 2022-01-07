
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct playlist_entry {int path; } ;
typedef int real_search_path ;
struct TYPE_3__ {size_t size; struct playlist_entry* entries; } ;
typedef TYPE_1__ playlist_t ;


 int PATH_MAX_LENGTH ;
 int path_resolve_realpath (char*,int,int) ;
 int playlist_path_equal (char*,int ) ;
 scalar_t__ string_is_empty (char const*) ;
 int strlcpy (char*,char const*,int) ;

void playlist_get_index_by_path(playlist_t *playlist,
      const char *search_path,
      const struct playlist_entry **entry)
{
   size_t i;
   char real_search_path[PATH_MAX_LENGTH];

   real_search_path[0] = '\0';

   if (!playlist || !entry || string_is_empty(search_path))
      return;


   strlcpy(real_search_path, search_path, sizeof(real_search_path));
   path_resolve_realpath(real_search_path, sizeof(real_search_path), 1);

   for (i = 0; i < playlist->size; i++)
   {
      if (!playlist_path_equal(real_search_path, playlist->entries[i].path))
         continue;

      *entry = &playlist->entries[i];

      break;
   }
}
