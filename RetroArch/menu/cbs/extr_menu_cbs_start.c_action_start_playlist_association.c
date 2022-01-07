
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int playlist_t ;


 int FILE_PATH_DETECT ;
 int file_path_str (int ) ;
 int * playlist_get_cached () ;
 int playlist_set_default_core_name (int *,int ) ;
 int playlist_set_default_core_path (int *,int ) ;
 int playlist_write_file (int *) ;

__attribute__((used)) static int action_start_playlist_association(unsigned type, const char *label)
{
   playlist_t *playlist = playlist_get_cached();

   if (!playlist)
      return -1;


   playlist_set_default_core_path(playlist, file_path_str(FILE_PATH_DETECT));
   playlist_set_default_core_name(playlist, file_path_str(FILE_PATH_DETECT));
   playlist_write_file(playlist);

   return 0;
}
