
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int video_driver_data; } ;
struct TYPE_8__ {int images_count; int io_count; int view_array; struct TYPE_8__* io; struct TYPE_8__* name; struct TYPE_8__* images; TYPE_2__ render_info; TYPE_1__* render; struct TYPE_8__* base_path; } ;
struct TYPE_6__ {int (* free_image ) (int ,TYPE_3__) ;} ;


 int free (TYPE_3__*) ;
 int stub1 (int ,TYPE_3__) ;
 TYPE_3__* video_layout_state ;
 int view_array_deinit (int *) ;

void video_layout_deinit(void)
{
   int i;

   if (!video_layout_state)
      return;

   free(video_layout_state->base_path);

   for (i = 1; i < video_layout_state->images_count; ++i)
   {
      video_layout_state->render->free_image(
         video_layout_state->render_info.video_driver_data,
         video_layout_state->images[i]
      );
   }

   free(video_layout_state->images);

   for (i = 0; i < video_layout_state->io_count; ++i)
      free(video_layout_state->io[i].name);

   free(video_layout_state->io);

   view_array_deinit(&video_layout_state->view_array);

   free(video_layout_state);
   video_layout_state = ((void*)0);
}
