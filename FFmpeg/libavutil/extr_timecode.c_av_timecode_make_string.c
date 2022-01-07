
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int fps; int flags; scalar_t__ start; } ;
typedef TYPE_1__ AVTimecode ;


 int AV_TIMECODE_FLAG_24HOURSMAX ;
 int AV_TIMECODE_FLAG_ALLOWNEGATIVE ;
 int AV_TIMECODE_FLAG_DROPFRAME ;
 int AV_TIMECODE_STR_SIZE ;
 int av_timecode_adjust_ntsc_framenum2 (int,int) ;
 int snprintf (char*,int ,char*,char*,int,int,int,char,int) ;

char *av_timecode_make_string(const AVTimecode *tc, char *buf, int framenum)
{
    int fps = tc->fps;
    int drop = tc->flags & AV_TIMECODE_FLAG_DROPFRAME;
    int hh, mm, ss, ff, neg = 0;

    framenum += tc->start;
    if (drop)
        framenum = av_timecode_adjust_ntsc_framenum2(framenum, fps);
    if (framenum < 0) {
        framenum = -framenum;
        neg = tc->flags & AV_TIMECODE_FLAG_ALLOWNEGATIVE;
    }
    ff = framenum % fps;
    ss = framenum / fps % 60;
    mm = framenum / (fps*60) % 60;
    hh = framenum / (fps*3600);
    if (tc->flags & AV_TIMECODE_FLAG_24HOURSMAX)
        hh = hh % 24;
    snprintf(buf, AV_TIMECODE_STR_SIZE, "%s%02d:%02d:%02d%c%02d",
             neg ? "-" : "",
             hh, mm, ss, drop ? ';' : ':', ff);
    return buf;
}
