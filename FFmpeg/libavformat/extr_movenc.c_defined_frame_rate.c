
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ den; } ;
typedef int AVStream ;
typedef TYPE_1__ AVRational ;
typedef int AVFormatContext ;


 int av_q2d (TYPE_1__) ;
 TYPE_1__ find_fps (int *,int *) ;

__attribute__((used)) static int defined_frame_rate(AVFormatContext *s, AVStream *st)
{
    AVRational rational_framerate = find_fps(s, st);
    int rate = 0;
    if (rational_framerate.den != 0)
        rate = av_q2d(rational_framerate);
    return rate;
}
