
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AV_LOG_ERROR ;
 int AV_SYNC_AUDIO_MASTER ;
 int AV_SYNC_EXTERNAL_CLOCK ;
 int AV_SYNC_VIDEO_MASTER ;
 int av_log (int *,int ,char*,char const*,char const*) ;
 int av_sync_type ;
 int exit (int) ;
 int strcmp (char const*,char*) ;

__attribute__((used)) static int opt_sync(void *optctx, const char *opt, const char *arg)
{
    if (!strcmp(arg, "audio"))
        av_sync_type = AV_SYNC_AUDIO_MASTER;
    else if (!strcmp(arg, "video"))
        av_sync_type = AV_SYNC_VIDEO_MASTER;
    else if (!strcmp(arg, "ext"))
        av_sync_type = AV_SYNC_EXTERNAL_CLOCK;
    else {
        av_log(((void*)0), AV_LOG_ERROR, "Unknown value for %s: %s\n", opt, arg);
        exit(1);
    }
    return 0;
}
