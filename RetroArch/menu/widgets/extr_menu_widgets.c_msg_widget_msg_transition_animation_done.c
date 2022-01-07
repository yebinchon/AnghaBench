
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {float msg_transition_animation; int * msg_new; int * msg; } ;
typedef TYPE_1__ menu_widget_msg_t ;


 int free (int *) ;

__attribute__((used)) static void msg_widget_msg_transition_animation_done(void *userdata)
{
   menu_widget_msg_t *msg = (menu_widget_msg_t*) userdata;

   free(msg->msg);

   msg->msg = msg->msg_new;
   msg->msg_new = ((void*)0);
   msg->msg_transition_animation = 0.0f;
}
