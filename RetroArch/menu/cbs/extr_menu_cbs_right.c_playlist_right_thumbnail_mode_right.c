
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int playlist_t ;


 int PLAYLIST_THUMBNAIL_RIGHT ;
 int * playlist_get_cached () ;
 int playlist_thumbnail_mode_right (int *,int ,int) ;

__attribute__((used)) static int playlist_right_thumbnail_mode_right(unsigned type, const char *label,
      bool wraparound)
{
   playlist_t *playlist = playlist_get_cached();

   if (!playlist)
      return -1;

   playlist_thumbnail_mode_right(playlist, PLAYLIST_THUMBNAIL_RIGHT, wraparound);

   return 0;
}
