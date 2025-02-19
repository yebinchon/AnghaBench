
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int playlist_t ;


 int PLAYLIST_THUMBNAIL_LEFT ;
 int * playlist_get_cached () ;
 int playlist_thumbnail_mode_left (int *,int ,int) ;

__attribute__((used)) static int playlist_left_thumbnail_mode_left(unsigned type, const char *label,
      bool wraparound)
{
   playlist_t *playlist = playlist_get_cached();

   if (!playlist)
      return -1;

   playlist_thumbnail_mode_left(playlist, PLAYLIST_THUMBNAIL_LEFT, wraparound);

   return 0;
}
