
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AVRational ;
typedef int AVOption ;


 int AVERROR (int ) ;
 int AV_LOG_ERROR ;
 int EINVAL ;
 int av_log (void*,int ,char*,char const*) ;
 int av_parse_video_rate (int *,char const*) ;

__attribute__((used)) static int set_string_video_rate(void *obj, const AVOption *o, const char *val, AVRational *dst)
{
    int ret;
    if (!val) {
        ret = AVERROR(EINVAL);
    } else {
        ret = av_parse_video_rate(dst, val);
    }
    if (ret < 0)
        av_log(obj, AV_LOG_ERROR, "Unable to parse option value \"%s\" as video rate\n", val);
    return ret;
}
