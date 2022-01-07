
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int (* on_event ) (TYPE_1__*) ;scalar_t__ frame_ready; scalar_t__ eof; } ;
typedef TYPE_1__ FFFrameSync ;


 int framesync_advance (TYPE_1__*) ;
 int stub1 (TYPE_1__*) ;

int ff_framesync_activate(FFFrameSync *fs)
{
    int ret;

    ret = framesync_advance(fs);
    if (ret < 0)
        return ret;
    if (fs->eof || !fs->frame_ready)
        return 0;
    ret = fs->on_event(fs);
    if (ret < 0)
        return ret;
    fs->frame_ready = 0;

    return 0;
}
