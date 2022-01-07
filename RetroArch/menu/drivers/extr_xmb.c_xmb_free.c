
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int carr; } ;
struct TYPE_4__ {int carr; } ;
struct TYPE_6__ {scalar_t__ thumbnail_path_data; scalar_t__ bg_file_path; scalar_t__ savestate_thumbnail_file_path; scalar_t__ box_message; TYPE_2__ raster_block2; TYPE_1__ raster_block; int * horizontal_list; int * selection_buf_old; } ;
typedef TYPE_3__ xmb_handle_t ;


 int file_list_free (int *) ;
 int font_driver_bind_block (int *,int *) ;
 int free (scalar_t__) ;
 int string_is_empty (scalar_t__) ;
 int video_coord_array_free (int *) ;
 int xmb_free_list_nodes (int *,int) ;

__attribute__((used)) static void xmb_free(void *data)
{
   xmb_handle_t *xmb = (xmb_handle_t*)data;

   if (xmb)
   {
      if (xmb->selection_buf_old)
      {
         xmb_free_list_nodes(xmb->selection_buf_old, 0);
         file_list_free(xmb->selection_buf_old);
      }

      if (xmb->horizontal_list)
      {
         xmb_free_list_nodes(xmb->horizontal_list, 0);
         file_list_free(xmb->horizontal_list);
      }

      xmb->selection_buf_old = ((void*)0);
      xmb->horizontal_list = ((void*)0);

      video_coord_array_free(&xmb->raster_block.carr);
      video_coord_array_free(&xmb->raster_block2.carr);

      if (!string_is_empty(xmb->box_message))
         free(xmb->box_message);
      if (!string_is_empty(xmb->savestate_thumbnail_file_path))
         free(xmb->savestate_thumbnail_file_path);
      if (!string_is_empty(xmb->bg_file_path))
         free(xmb->bg_file_path);

      if (xmb->thumbnail_path_data)
         free(xmb->thumbnail_path_data);
   }

   font_driver_bind_block(((void*)0), ((void*)0));
}
