
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int step; scalar_t__ paused; } ;
typedef TYPE_1__ VideoState ;


 int stream_toggle_pause (TYPE_1__*) ;

__attribute__((used)) static void step_to_next_frame(VideoState *is)
{

    if (is->paused)
        stream_toggle_pause(is);
    is->step = 1;
}
