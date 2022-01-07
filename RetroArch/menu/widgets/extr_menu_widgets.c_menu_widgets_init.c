
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int menu_widget_msg_t ;
typedef int file_list_t ;


 int MSG_QUEUE_ONSCREEN_MAX ;
 int MSG_QUEUE_PENDING_MAX ;
 scalar_t__ calloc (int,int) ;
 int * current_msgs ;
 int fifo_new (int) ;
 int file_list_reserve (int *,int ) ;
 int menu_display_init_first_driver (int) ;
 scalar_t__ menu_widgets_frame_count ;
 int menu_widgets_free () ;
 scalar_t__ menu_widgets_ready () ;
 int msg_queue ;

bool menu_widgets_init(bool video_is_threaded)
{
   if (!menu_display_init_first_driver(video_is_threaded))
      goto error;

   menu_widgets_frame_count = 0;

   msg_queue = fifo_new(MSG_QUEUE_PENDING_MAX * sizeof(menu_widget_msg_t*));

   if (!msg_queue)
      goto error;

   current_msgs = (file_list_t*)calloc(1, sizeof(file_list_t));

   if (!current_msgs)
      goto error;

   if (!file_list_reserve(current_msgs, MSG_QUEUE_ONSCREEN_MAX))
      goto error;

   return 1;

error:
   if (menu_widgets_ready())
      menu_widgets_free();
   return 0;
}
