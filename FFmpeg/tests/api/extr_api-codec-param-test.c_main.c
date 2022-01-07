
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AVFormatContext ;


 int AV_LOG_ERROR ;
 int av_log (int *,int ,char*,char*) ;
 int avformat_close_input (int **) ;
 int check_video_streams (int *,int *) ;
 int open_and_probe_video_streams (int **,char*,int) ;

int main(int argc, char* argv[])
{
    int ret = 0;
    AVFormatContext *fmt_ctx = ((void*)0);
    AVFormatContext *fmt_ctx_no_decode = ((void*)0);

    if (argc < 2) {
        av_log(((void*)0), AV_LOG_ERROR, "Usage: %s <input>\n", argv[0]);
        return -1;
    }

    if ((ret = open_and_probe_video_streams(&fmt_ctx_no_decode, argv[1], 0)) < 0) {
        av_log(((void*)0), AV_LOG_ERROR, "Failed to probe '%s' without frame decoding\n", argv[1]);
        goto end;
    }

    if ((ret = open_and_probe_video_streams(&fmt_ctx, argv[1], 1)) < 0) {
        av_log(((void*)0), AV_LOG_ERROR, "Failed to probe '%s' with frame decoding\n", argv[1]);
        goto end;
    }

    ret = check_video_streams(fmt_ctx, fmt_ctx_no_decode);

end:
    avformat_close_input(&fmt_ctx);
    avformat_close_input(&fmt_ctx_no_decode);

    return ret;
}
