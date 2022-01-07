
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int view_changed; } ;


 TYPE_1__* video_layout_state ;

void video_layout_view_change(void)
{
   video_layout_state->view_changed = 1;
}
