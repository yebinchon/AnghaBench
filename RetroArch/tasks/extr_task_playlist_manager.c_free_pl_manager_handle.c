
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * playlist; struct TYPE_5__* playlist_name; struct TYPE_5__* playlist_path; } ;
typedef TYPE_1__ pl_manager_handle_t ;


 int free (TYPE_1__*) ;
 int playlist_free (int *) ;
 int string_is_empty (TYPE_1__*) ;

__attribute__((used)) static void free_pl_manager_handle(pl_manager_handle_t *pl_manager)
{
   if (!pl_manager)
      return;

   if (!string_is_empty(pl_manager->playlist_path))
   {
      free(pl_manager->playlist_path);
      pl_manager->playlist_path = ((void*)0);
   }

   if (!string_is_empty(pl_manager->playlist_name))
   {
      free(pl_manager->playlist_name);
      pl_manager->playlist_name = ((void*)0);
   }

   if (pl_manager->playlist)
   {
      playlist_free(pl_manager->playlist);
      pl_manager->playlist = ((void*)0);
   }

   free(pl_manager);
   pl_manager = ((void*)0);
}
