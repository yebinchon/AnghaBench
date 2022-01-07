
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int label_display_mode; int modified; } ;
typedef TYPE_1__ playlist_t ;
typedef enum playlist_label_display_mode { ____Placeholder_playlist_label_display_mode } playlist_label_display_mode ;



void playlist_set_label_display_mode(playlist_t *playlist, enum playlist_label_display_mode label_display_mode)
{
   if (!playlist)
      return;

   if (playlist->label_display_mode != label_display_mode) {
      playlist->label_display_mode = label_display_mode;
      playlist->modified = 1;
   }
}
