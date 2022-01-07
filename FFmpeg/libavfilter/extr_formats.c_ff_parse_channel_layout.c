
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ int64_t ;


 int AVERROR (int ) ;
 int AV_LOG_ERROR ;
 int EINVAL ;
 scalar_t__ av_get_extended_channel_layout (char const*,scalar_t__*,int*) ;
 int av_log (void*,int ,char*,char const*) ;

int ff_parse_channel_layout(int64_t *ret, int *nret, const char *arg,
                            void *log_ctx)
{
    int64_t chlayout;
    int nb_channels;

    if (av_get_extended_channel_layout(arg, &chlayout, &nb_channels) < 0) {
        av_log(log_ctx, AV_LOG_ERROR, "Invalid channel layout '%s'\n", arg);
        return AVERROR(EINVAL);
    }
    if (!chlayout && !nret) {
        av_log(log_ctx, AV_LOG_ERROR, "Unknown channel layout '%s' is not supported.\n", arg);
        return AVERROR(EINVAL);
    }
    *ret = chlayout;
    if (nret)
        *nret = nb_channels;

    return 0;
}
