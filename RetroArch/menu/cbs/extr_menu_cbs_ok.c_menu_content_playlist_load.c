
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct playlist_entry {char* path; } ;
typedef int playlist_t ;
typedef int path ;


 int PATH_MAX_LENGTH ;
 int PLAYLIST_LOAD ;
 scalar_t__ calloc (int,int) ;
 int free (char*) ;
 int path_is_valid (char*) ;
 int playlist_get_index (int *,size_t,struct playlist_entry const**) ;
 int playlist_resolve_path (int ,char*,int) ;
 char* strdup (char*) ;
 int string_is_empty (char*) ;
 int strlcpy (char*,char*,int) ;
 int strlen (char*) ;
 char* strstr (char*,char*) ;
 char tolower (unsigned char) ;

__attribute__((used)) static bool menu_content_playlist_load(playlist_t *playlist, size_t idx)
{
   char path[PATH_MAX_LENGTH];
   const struct playlist_entry *entry = ((void*)0);

   playlist_get_index(playlist, idx, &entry);

   path[0] = '\0';
   strlcpy(path, entry->path, sizeof(path));
   playlist_resolve_path(PLAYLIST_LOAD, path, sizeof(path));

   if (!string_is_empty(path))
   {
      unsigned i;
      bool valid_path = 0;
      char *path_check = ((void*)0);
      char *path_tolower = strdup(path);

      for (i = 0; i < strlen(path_tolower); ++i)
         path_tolower[i] = tolower((unsigned char)path_tolower[i]);

      if (strstr(path_tolower, ".zip"))
         strstr(path_tolower, ".zip")[4] = '\0';
      else if (strstr(path_tolower, ".7z"))
         strstr(path_tolower, ".7z")[3] = '\0';

      path_check = (char *)
         calloc(strlen(path_tolower) + 1, sizeof(char));

      strlcpy(path_check, path, strlen(path_tolower) + 1);

      valid_path = path_is_valid(path_check);

      free(path_tolower);
      free(path_check);

      if (valid_path)
         return 1;
   }

   return 0;
}
