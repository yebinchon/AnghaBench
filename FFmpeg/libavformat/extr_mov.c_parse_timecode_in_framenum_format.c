
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int metadata; int avg_frame_rate; } ;
typedef int AVTimecode ;
typedef TYPE_1__ AVStream ;
typedef int AVRational ;
typedef int AVFormatContext ;


 int AV_TIMECODE_STR_SIZE ;
 int av_dict_set (int *,char*,int ,int ) ;
 int av_timecode_init (int *,int ,int,int ,int *) ;
 int av_timecode_make_string (int *,char*,int ) ;

__attribute__((used)) static int parse_timecode_in_framenum_format(AVFormatContext *s, AVStream *st,
                                             uint32_t value, int flags)
{
    AVTimecode tc;
    char buf[AV_TIMECODE_STR_SIZE];
    AVRational rate = st->avg_frame_rate;
    int ret = av_timecode_init(&tc, rate, flags, 0, s);
    if (ret < 0)
        return ret;
    av_dict_set(&st->metadata, "timecode",
                av_timecode_make_string(&tc, buf, value), 0);
    return 0;
}
