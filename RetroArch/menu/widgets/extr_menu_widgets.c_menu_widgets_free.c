
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int msg_widget ;
typedef int menu_widget_msg_t ;
typedef uintptr_t menu_animation_ctx_tag ;
struct TYPE_8__ {size_t size; } ;
struct TYPE_7__ {int carr; } ;
struct TYPE_6__ {int carr; } ;


 TYPE_3__* current_msgs ;
 int fifo_free (int *) ;
 int fifo_read (int *,int **,int) ;
 scalar_t__ fifo_read_avail (int *) ;
 int file_list_free (TYPE_3__*) ;
 scalar_t__ file_list_get_userdata_at_offset (TYPE_3__*,size_t) ;
 int font_driver_bind_block (int *,int *) ;
 TYPE_2__ font_raster_bold ;
 TYPE_1__ font_raster_regular ;
 int free (int *) ;
 float generic_message_alpha ;
 float libretro_message_alpha ;
 int libretro_message_timer ;
 int menu_animation_kill_by_tag (uintptr_t*) ;
 int menu_timer_kill (int *) ;
 int menu_widgets_achievement_free (int *) ;
 uintptr_t menu_widgets_generic_tag ;
 int menu_widgets_msg_queue_free (int *,int) ;
 int menu_widgets_screenshot_dispose (int *) ;
 int * msg_queue ;
 scalar_t__ msg_queue_tasks_count ;
 float screenshot_alpha ;
 int video_coord_array_free (int *) ;
 float volume_alpha ;
 uintptr_t volume_tag ;

void menu_widgets_free(void)
{
   size_t i;
   menu_animation_ctx_tag libretro_tag;


   menu_animation_kill_by_tag(&volume_tag);
   menu_animation_kill_by_tag(&menu_widgets_generic_tag);


   if (msg_queue)
   {
      while (fifo_read_avail(msg_queue) > 0)
      {
         menu_widget_msg_t *msg_widget;

         fifo_read(msg_queue, &msg_widget, sizeof(msg_widget));

         menu_widgets_msg_queue_free(msg_widget, 0);
         free(msg_widget);
      }

      fifo_free(msg_queue);
      msg_queue = ((void*)0);
   }


   if (current_msgs)
   {
      for (i = 0; i < current_msgs->size; i++)
      {
         menu_widget_msg_t *msg = (menu_widget_msg_t*)
            file_list_get_userdata_at_offset(current_msgs, i);

         menu_widgets_msg_queue_free(msg, 0);
      }
      file_list_free(current_msgs);
      current_msgs = ((void*)0);
   }

   msg_queue_tasks_count = 0;


   menu_widgets_achievement_free(((void*)0));


   video_coord_array_free(&font_raster_regular.carr);
   video_coord_array_free(&font_raster_bold.carr);

   font_driver_bind_block(((void*)0), ((void*)0));



   generic_message_alpha = 0.0f;


   libretro_tag = (uintptr_t) &libretro_message_timer;
   libretro_message_alpha = 0.0f;
   menu_timer_kill(&libretro_message_timer);
   menu_animation_kill_by_tag(&libretro_tag);





   volume_alpha = 0.0f;


   screenshot_alpha = 0.0f;
   menu_widgets_screenshot_dispose(((void*)0));
}
