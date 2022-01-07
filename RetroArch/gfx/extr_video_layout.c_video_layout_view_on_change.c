
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int view_changed; } ;


 TYPE_1__* video_layout_state ;

bool video_layout_view_on_change(void)
{
   if (video_layout_state->view_changed)
   {
      video_layout_state->view_changed = 0;
      return 1;
   }
   return 0;
}
