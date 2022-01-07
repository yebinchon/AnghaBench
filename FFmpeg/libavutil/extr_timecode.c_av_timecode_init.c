
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int start; int flags; int fps; int rate; } ;
typedef TYPE_1__ AVTimecode ;
typedef int AVRational ;


 int check_timecode (void*,TYPE_1__*) ;
 int fps_from_frame_rate (int ) ;
 int memset (TYPE_1__*,int ,int) ;

int av_timecode_init(AVTimecode *tc, AVRational rate, int flags, int frame_start, void *log_ctx)
{
    memset(tc, 0, sizeof(*tc));
    tc->start = frame_start;
    tc->flags = flags;
    tc->rate = rate;
    tc->fps = fps_from_frame_rate(rate);
    return check_timecode(log_ctx, tc);
}
