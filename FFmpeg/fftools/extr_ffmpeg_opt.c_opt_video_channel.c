
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AV_LOG_WARNING ;
 int av_log (int *,int ,char*) ;
 int opt_default (void*,char*,char const*) ;

__attribute__((used)) static int opt_video_channel(void *optctx, const char *opt, const char *arg)
{
    av_log(((void*)0), AV_LOG_WARNING, "This option is deprecated, use -channel.\n");
    return opt_default(optctx, "channel", arg);
}
