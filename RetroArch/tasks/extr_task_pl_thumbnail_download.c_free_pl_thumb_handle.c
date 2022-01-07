
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* thumbnail_path_data; int * playlist; struct TYPE_5__* dir_thumbnails; struct TYPE_5__* playlist_path; struct TYPE_5__* system; } ;
typedef TYPE_1__ pl_thumb_handle_t ;


 int free (TYPE_1__*) ;
 int playlist_free (int *) ;
 int string_is_empty (TYPE_1__*) ;

__attribute__((used)) static void free_pl_thumb_handle(pl_thumb_handle_t *pl_thumb, bool free_playlist)
{
   if (!pl_thumb)
      return;

   if (!string_is_empty(pl_thumb->system))
   {
      free(pl_thumb->system);
      pl_thumb->system = ((void*)0);
   }

   if (!string_is_empty(pl_thumb->playlist_path))
   {
      free(pl_thumb->playlist_path);
      pl_thumb->playlist_path = ((void*)0);
   }

   if (!string_is_empty(pl_thumb->dir_thumbnails))
   {
      free(pl_thumb->dir_thumbnails);
      pl_thumb->dir_thumbnails = ((void*)0);
   }

   if (pl_thumb->playlist && free_playlist)
   {
      playlist_free(pl_thumb->playlist);
      pl_thumb->playlist = ((void*)0);
   }

   if (pl_thumb->thumbnail_path_data)
   {
      free(pl_thumb->thumbnail_path_data);
      pl_thumb->thumbnail_path_data = ((void*)0);
   }

   free(pl_thumb);
   pl_thumb = ((void*)0);
}
