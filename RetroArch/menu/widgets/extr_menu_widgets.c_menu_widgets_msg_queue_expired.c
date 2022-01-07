
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int expired; } ;
typedef TYPE_1__ menu_widget_msg_t ;



__attribute__((used)) static void menu_widgets_msg_queue_expired(void *userdata)
{
   menu_widget_msg_t *msg = (menu_widget_msg_t *) userdata;

   if (msg && !msg->expired)
      msg->expired = 1;
}
