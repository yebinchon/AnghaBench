
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int real_core_path ;
struct TYPE_3__ {char* default_core_path; int modified; } ;
typedef TYPE_1__ playlist_t ;


 int PATH_MAX_LENGTH ;
 int PLAYLIST_SAVE ;
 int free (char*) ;
 int playlist_resolve_path (int ,char*,int) ;
 char* strdup (char*) ;
 scalar_t__ string_is_empty (char const*) ;
 int string_is_equal (char*,char*) ;
 int strlcpy (char*,char const*,int) ;

void playlist_set_default_core_path(playlist_t *playlist, const char *core_path)
{
   char real_core_path[PATH_MAX_LENGTH];

   real_core_path[0] = '\0';

   if (!playlist || string_is_empty(core_path))
      return;


   strlcpy(real_core_path, core_path, sizeof(real_core_path));
   if (!string_is_equal(real_core_path, "DETECT"))
       playlist_resolve_path(PLAYLIST_SAVE, real_core_path, sizeof(real_core_path));

   if (string_is_empty(real_core_path))
      return;

   if (!string_is_equal(playlist->default_core_path, real_core_path))
   {
      if (playlist->default_core_path)
         free(playlist->default_core_path);
      playlist->default_core_path = strdup(real_core_path);
      playlist->modified = 1;
   }
}
