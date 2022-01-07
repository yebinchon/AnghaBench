
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int carr; } ;
struct TYPE_4__ {int carr; } ;
struct TYPE_6__ {int bg_file_path; int left_thumbnail_file_path; int thumbnail_file_path; int savestate_thumbnail_file_path; int thumbnail_content; int thumbnail_system; int box_message; TYPE_2__ raster_block2; TYPE_1__ raster_block; int * horizontal_list; int * selection_buf_old; } ;
typedef TYPE_3__ stripes_handle_t ;


 int file_list_free (int *) ;
 int font_driver_bind_block (int *,int *) ;
 int free (int ) ;
 int string_is_empty (int ) ;
 int stripes_free_list_nodes (int *,int) ;
 int video_coord_array_free (int *) ;

__attribute__((used)) static void stripes_free(void *data)
{
   stripes_handle_t *stripes = (stripes_handle_t*)data;

   if (stripes)
   {
      if (stripes->selection_buf_old)
      {
         stripes_free_list_nodes(stripes->selection_buf_old, 0);
         file_list_free(stripes->selection_buf_old);
      }

      if (stripes->horizontal_list)
      {
         stripes_free_list_nodes(stripes->horizontal_list, 0);
         file_list_free(stripes->horizontal_list);
      }

      stripes->selection_buf_old = ((void*)0);
      stripes->horizontal_list = ((void*)0);

      video_coord_array_free(&stripes->raster_block.carr);
      video_coord_array_free(&stripes->raster_block2.carr);

      if (!string_is_empty(stripes->box_message))
         free(stripes->box_message);
      if (!string_is_empty(stripes->thumbnail_system))
         free(stripes->thumbnail_system);
      if (!string_is_empty(stripes->thumbnail_content))
         free(stripes->thumbnail_content);
      if (!string_is_empty(stripes->savestate_thumbnail_file_path))
         free(stripes->savestate_thumbnail_file_path);
      if (!string_is_empty(stripes->thumbnail_file_path))
         free(stripes->thumbnail_file_path);
      if (!string_is_empty(stripes->left_thumbnail_file_path))
         free(stripes->left_thumbnail_file_path);
      if (!string_is_empty(stripes->bg_file_path))
         free(stripes->bg_file_path);
   }

   font_driver_bind_block(((void*)0), ((void*)0));
}
