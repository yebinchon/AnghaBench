
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * views; scalar_t__ views_count; } ;
struct TYPE_4__ {int view_index; TYPE_1__ view_array; int * view; } ;


 int MAX (int ,int ) ;
 int MIN (int,scalar_t__) ;
 TYPE_2__* video_layout_state ;
 int video_layout_view_change () ;

int video_layout_view_select(int index)
{
   index = MAX(0, MIN(index, video_layout_state->view_array.views_count - 1));

   video_layout_state->view_index = index;
   video_layout_state->view = video_layout_state->view_array.views_count ?
      &video_layout_state->view_array.views[index] : ((void*)0);

   video_layout_view_change();

   return index;
}
