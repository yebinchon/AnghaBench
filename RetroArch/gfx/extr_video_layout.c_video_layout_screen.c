
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int video_layout_bounds_t ;
struct TYPE_4__ {TYPE_1__* view; } ;
struct TYPE_3__ {int const* screens; } ;


 TYPE_2__* video_layout_state ;

const video_layout_bounds_t *video_layout_screen(int index)
{
   return &video_layout_state->view->screens[index];
}
