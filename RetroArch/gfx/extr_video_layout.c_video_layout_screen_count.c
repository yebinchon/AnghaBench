
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* view; } ;
struct TYPE_3__ {int screens_count; } ;


 TYPE_2__* video_layout_state ;

int video_layout_screen_count(void)
{
   return video_layout_state->view->screens_count;
}
