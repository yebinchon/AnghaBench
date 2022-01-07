
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int playlist_t ;
typedef enum playlist_thumbnail_mode { ____Placeholder_playlist_thumbnail_mode } playlist_thumbnail_mode ;
typedef enum playlist_thumbnail_id { ____Placeholder_playlist_thumbnail_id } playlist_thumbnail_id ;


 int PLAYLIST_THUMBNAIL_MODE_BOXARTS ;
 int PLAYLIST_THUMBNAIL_MODE_DEFAULT ;
 int playlist_get_thumbnail_mode (int *,int) ;
 int playlist_set_thumbnail_mode (int *,int,int) ;
 int playlist_write_file (int *) ;

__attribute__((used)) static void playlist_thumbnail_mode_right(playlist_t *playlist, enum playlist_thumbnail_id thumbnail_id,
      bool wraparound)
{
   enum playlist_thumbnail_mode thumbnail_mode =
         playlist_get_thumbnail_mode(playlist, thumbnail_id);

   if (thumbnail_mode < PLAYLIST_THUMBNAIL_MODE_BOXARTS)
      thumbnail_mode = (enum playlist_thumbnail_mode)((unsigned)thumbnail_mode + 1);
   else if (wraparound)
      thumbnail_mode = PLAYLIST_THUMBNAIL_MODE_DEFAULT;

   playlist_set_thumbnail_mode(playlist, thumbnail_id, thumbnail_mode);
   playlist_write_file(playlist);
}
