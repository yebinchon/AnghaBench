
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AVERROR (int ) ;
 int AV_LOG_ERROR ;
 int AV_SAMPLE_FMT_NONE ;
 int EINVAL ;
 scalar_t__ av_get_bytes_per_sample (int) ;
 int av_get_sample_fmt (char const*) ;
 int av_log (void*,int ,char*,char const*) ;
 int strtol (char const*,char**,int ) ;

int ff_parse_sample_format(int *ret, const char *arg, void *log_ctx)
{
    char *tail;
    int sfmt = av_get_sample_fmt(arg);
    if (sfmt == AV_SAMPLE_FMT_NONE) {
        sfmt = strtol(arg, &tail, 0);
        if (*tail || av_get_bytes_per_sample(sfmt)<=0) {
            av_log(log_ctx, AV_LOG_ERROR, "Invalid sample format '%s'\n", arg);
            return AVERROR(EINVAL);
        }
    }
    *ret = sfmt;
    return 0;
}
