
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int menu_widget_msg_t ;


 int current_msgs ;
 scalar_t__ file_list_get_userdata_at_offset (int ,int ) ;
 int menu_widgets_msg_queue_free (int *,int) ;
 int msg_queue_kill ;

__attribute__((used)) static void menu_widgets_msg_queue_kill_end(void *userdata)
{
   menu_widget_msg_t *msg = (menu_widget_msg_t*)
      file_list_get_userdata_at_offset(current_msgs, msg_queue_kill);

   if (!msg)
      return;

   menu_widgets_msg_queue_free(msg, 1);
}
