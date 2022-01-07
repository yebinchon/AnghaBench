
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {void* video_driver_data; } ;
struct TYPE_5__ {int images_count; int ** images; int const* render; TYPE_1__ render_info; } ;
typedef TYPE_2__ video_layout_state_t ;
typedef int video_layout_render_interface_t ;


 scalar_t__ calloc (int,int) ;
 int vec_size (void**,int,int) ;
 int video_layout_deinit () ;
 TYPE_2__* video_layout_state ;

void video_layout_init(void *video_driver_data, const video_layout_render_interface_t *render)
{
   if (video_layout_state)
      video_layout_deinit();

   video_layout_state = (video_layout_state_t*)calloc(1, sizeof(video_layout_state_t));
   video_layout_state->render_info.video_driver_data = video_driver_data;
   video_layout_state->render = render;

   vec_size((void**)&video_layout_state->images, sizeof(void*), 1);

   video_layout_state->images[0] = ((void*)0);
   video_layout_state->images_count = 1;
}
