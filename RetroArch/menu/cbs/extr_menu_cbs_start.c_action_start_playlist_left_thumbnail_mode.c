
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int playlist_t ;


 int PLAYLIST_THUMBNAIL_LEFT ;
 int PLAYLIST_THUMBNAIL_MODE_DEFAULT ;
 int * playlist_get_cached () ;
 int playlist_set_thumbnail_mode (int *,int ,int ) ;
 int playlist_write_file (int *) ;

__attribute__((used)) static int action_start_playlist_left_thumbnail_mode(unsigned type, const char *label)
{
   playlist_t *playlist = playlist_get_cached();

   if (!playlist)
      return -1;


   playlist_set_thumbnail_mode(playlist, PLAYLIST_THUMBNAIL_LEFT, PLAYLIST_THUMBNAIL_MODE_DEFAULT);
   playlist_write_file(playlist);

   return 0;
}
