
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* io; } ;
struct TYPE_3__ {int value; } ;


 TYPE_2__* video_layout_state ;

void video_layout_io_set(int index, int value)
{
   video_layout_state->io[index].value = value;
}
