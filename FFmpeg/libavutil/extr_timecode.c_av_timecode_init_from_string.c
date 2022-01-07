
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int flags; int fps; int start; int rate; } ;
typedef TYPE_1__ AVTimecode ;
typedef int AVRational ;


 int AVERROR_INVALIDDATA ;
 int AV_LOG_ERROR ;
 int AV_TIMECODE_FLAG_DROPFRAME ;
 int av_log (void*,int ,char*) ;
 int check_timecode (void*,TYPE_1__*) ;
 int fps_from_frame_rate (int ) ;
 int memset (TYPE_1__*,int ,int) ;
 int sscanf (char const*,char*,int*,int*,int*,char*,int*) ;

int av_timecode_init_from_string(AVTimecode *tc, AVRational rate, const char *str, void *log_ctx)
{
    char c;
    int hh, mm, ss, ff, ret;

    if (sscanf(str, "%d:%d:%d%c%d", &hh, &mm, &ss, &c, &ff) != 5) {
        av_log(log_ctx, AV_LOG_ERROR, "Unable to parse timecode, "
                                      "syntax: hh:mm:ss[:;.]ff\n");
        return AVERROR_INVALIDDATA;
    }

    memset(tc, 0, sizeof(*tc));
    tc->flags = c != ':' ? AV_TIMECODE_FLAG_DROPFRAME : 0;
    tc->rate = rate;
    tc->fps = fps_from_frame_rate(rate);

    ret = check_timecode(log_ctx, tc);
    if (ret < 0)
        return ret;

    tc->start = (hh*3600 + mm*60 + ss) * tc->fps + ff;
    if (tc->flags & AV_TIMECODE_FLAG_DROPFRAME) {
        int tmins = 60*hh + mm;
        tc->start -= (tc->fps == 30 ? 2 : 4) * (tmins - tmins/10);
    }
    return 0;
}
