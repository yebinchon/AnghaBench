
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AV_LOG_WARNING ;
 int av_log (int *,int ,char*) ;
 int opt_default (int *,char*,char const*) ;

__attribute__((used)) static int opt_frame_size(void *optctx, const char *opt, const char *arg)
{
    av_log(((void*)0), AV_LOG_WARNING, "Option -s is deprecated, use -video_size.\n");
    return opt_default(((void*)0), "video_size", arg);
}
