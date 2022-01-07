
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AVFormatContext ;


 int AV_LOG_ERROR ;
 int av_log (int *,int ,char*,char const*) ;
 int avformat_open_input (int **,char const*,int *,int *) ;
 int dump_video_streams (int *,int) ;
 int find_video_stream_info (int *,int) ;

__attribute__((used)) static int open_and_probe_video_streams(AVFormatContext **fmt_ctx, const char *filename, int decode)
{
    int ret = 0;

    ret = avformat_open_input(fmt_ctx, filename, ((void*)0), ((void*)0));
    if (ret < 0) {
        av_log(((void*)0), AV_LOG_ERROR, "Failed to open input '%s'", filename);
        goto end;
    }

    ret = find_video_stream_info(*fmt_ctx, decode);
    if (ret < 0) {
        goto end;
    }

    dump_video_streams(*fmt_ctx, decode);

end:
    return ret;
}
