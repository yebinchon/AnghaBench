
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int playlist_t ;


 int * playlist_get_cached () ;
 char* playlist_get_conf_path (int *) ;
 scalar_t__ string_is_empty (char const*) ;
 int task_push_pl_manager_reset_cores (char const*) ;

__attribute__((used)) static int action_ok_playlist_reset_cores(const char *path,
      const char *label, unsigned type, size_t idx, size_t entry_idx)
{
   playlist_t *playlist = playlist_get_cached();
   const char *playlist_path = ((void*)0);

   if (!playlist)
      return -1;

   playlist_path = playlist_get_conf_path(playlist);

   if (string_is_empty(playlist_path))
      return -1;

   task_push_pl_manager_reset_cores(playlist_path);

   return 0;
}
