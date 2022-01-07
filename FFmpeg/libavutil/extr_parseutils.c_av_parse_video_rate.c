
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ num; scalar_t__ den; } ;
struct TYPE_7__ {TYPE_1__ rate; int abbr; } ;
typedef TYPE_1__ AVRational ;


 int AVERROR (int ) ;
 int EINVAL ;
 int FF_ARRAY_ELEMS (TYPE_2__*) ;
 int av_parse_ratio_quiet (TYPE_1__*,char const*,int) ;
 int strcmp (int ,char const*) ;
 TYPE_2__* video_rate_abbrs ;

int av_parse_video_rate(AVRational *rate, const char *arg)
{
    int i, ret;
    int n = FF_ARRAY_ELEMS(video_rate_abbrs);


    for (i = 0; i < n; ++i)
        if (!strcmp(video_rate_abbrs[i].abbr, arg)) {
            *rate = video_rate_abbrs[i].rate;
            return 0;
        }


    if ((ret = av_parse_ratio_quiet(rate, arg, 1001000)) < 0)
        return ret;
    if (rate->num <= 0 || rate->den <= 0)
        return AVERROR(EINVAL);
    return 0;
}
