
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int unfolding; } ;
typedef TYPE_1__ menu_widget_msg_t ;


 int widgets_moving ;

__attribute__((used)) static void menu_widgets_unfold_end(void *userdata)
{
   menu_widget_msg_t *unfold = (menu_widget_msg_t*) userdata;

   unfold->unfolding = 0;
   widgets_moving = 0;
}
