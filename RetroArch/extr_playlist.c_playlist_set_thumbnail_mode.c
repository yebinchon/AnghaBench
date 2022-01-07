
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int right_thumbnail_mode; int modified; int left_thumbnail_mode; } ;
typedef TYPE_1__ playlist_t ;
typedef enum playlist_thumbnail_mode { ____Placeholder_playlist_thumbnail_mode } playlist_thumbnail_mode ;
typedef enum playlist_thumbnail_id { ____Placeholder_playlist_thumbnail_id } playlist_thumbnail_id ;


 int PLAYLIST_THUMBNAIL_LEFT ;
 int PLAYLIST_THUMBNAIL_RIGHT ;

void playlist_set_thumbnail_mode(
      playlist_t *playlist, enum playlist_thumbnail_id thumbnail_id, enum playlist_thumbnail_mode thumbnail_mode)
{
   if (!playlist)
      return;

   if (thumbnail_id == PLAYLIST_THUMBNAIL_RIGHT)
   {
      playlist->right_thumbnail_mode = thumbnail_mode;
      playlist->modified = 1;
   }
   else if (thumbnail_id == PLAYLIST_THUMBNAIL_LEFT)
   {
      playlist->left_thumbnail_mode = thumbnail_mode;
      playlist->modified = 1;
   }
}
