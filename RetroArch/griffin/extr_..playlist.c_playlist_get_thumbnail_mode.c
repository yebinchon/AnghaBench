
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int right_thumbnail_mode; int left_thumbnail_mode; } ;
typedef TYPE_1__ playlist_t ;
typedef enum playlist_thumbnail_mode { ____Placeholder_playlist_thumbnail_mode } playlist_thumbnail_mode ;
typedef enum playlist_thumbnail_id { ____Placeholder_playlist_thumbnail_id } playlist_thumbnail_id ;


 int PLAYLIST_THUMBNAIL_LEFT ;
 int PLAYLIST_THUMBNAIL_MODE_DEFAULT ;
 int PLAYLIST_THUMBNAIL_RIGHT ;

enum playlist_thumbnail_mode playlist_get_thumbnail_mode(
      playlist_t *playlist, enum playlist_thumbnail_id thumbnail_id)
{
   if (!playlist)
      return PLAYLIST_THUMBNAIL_MODE_DEFAULT;

   if (thumbnail_id == PLAYLIST_THUMBNAIL_RIGHT)
      return playlist->right_thumbnail_mode;
   else if (thumbnail_id == PLAYLIST_THUMBNAIL_LEFT)
      return playlist->left_thumbnail_mode;


   return PLAYLIST_THUMBNAIL_MODE_DEFAULT;
}
