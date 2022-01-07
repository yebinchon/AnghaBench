
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {size_t size; TYPE_1__* entries; } ;
typedef TYPE_2__ playlist_t ;
struct TYPE_4__ {char const* path; char const* core_path; } ;


 char const* path_basename (char const*) ;
 scalar_t__ string_is_equal (char const*,char const*) ;

bool playlist_index_is_valid(playlist_t *playlist, size_t idx,
      const char *path, const char *core_path)
{
   if (!playlist)
      return 0;

   if (idx >= playlist->size)
      return 0;

   return string_is_equal(playlist->entries[idx].path, path) &&
          string_is_equal(path_basename(playlist->entries[idx].core_path), path_basename(core_path));
}
