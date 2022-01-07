
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int av_log (void*,int,char*,char const*) ;
 int libopenh264_to_ffmpeg_log_level (int) ;

void ff_libopenh264_trace_callback(void *ctx, int level, const char *msg)
{


    int equiv_ffmpeg_log_level = libopenh264_to_ffmpeg_log_level(level);
    av_log(ctx, equiv_ffmpeg_log_level, "%s\n", msg);
}
