
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int view_index; } ;


 TYPE_1__* video_layout_state ;

int video_layout_view_index(void)
{
   return video_layout_state->view_index;
}
