
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ view; } ;


 TYPE_1__* video_layout_state ;

bool video_layout_valid(void)
{
   return video_layout_state && video_layout_state->view;
}
