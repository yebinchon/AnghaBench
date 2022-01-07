
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ stream_index; int member_0; } ;
typedef TYPE_1__ AVPacket ;


 int AVERROR (int ) ;
 int AVMEDIA_TYPE_VIDEO ;
 int ENOMEM ;
 int av_dump_format (int ,int ,char*,int ) ;
 int av_frame_alloc () ;
 int av_frame_free (int *) ;
 int av_packet_unref (TYPE_1__*) ;
 scalar_t__ av_read_frame (int ,TYPE_1__*) ;
 int avcodec_free_context (int *) ;
 int avformat_close_input (int *) ;
 scalar_t__ avformat_find_stream_info (int ,int *) ;
 scalar_t__ avformat_open_input (int *,char*,int *,int *) ;
 int decode_packet (TYPE_1__*) ;
 int exit (int) ;
 int fmt_ctx ;
 int fprintf (int ,char*,...) ;
 int frame ;
 int open_codec_context (int ,int ) ;
 int printf (char*) ;
 char* src_filename ;
 int stderr ;
 int video_dec_ctx ;
 int video_stream ;
 scalar_t__ video_stream_idx ;

int main(int argc, char **argv)
{
    int ret = 0;
    AVPacket pkt = { 0 };

    if (argc != 2) {
        fprintf(stderr, "Usage: %s <video>\n", argv[0]);
        exit(1);
    }
    src_filename = argv[1];

    if (avformat_open_input(&fmt_ctx, src_filename, ((void*)0), ((void*)0)) < 0) {
        fprintf(stderr, "Could not open source file %s\n", src_filename);
        exit(1);
    }

    if (avformat_find_stream_info(fmt_ctx, ((void*)0)) < 0) {
        fprintf(stderr, "Could not find stream information\n");
        exit(1);
    }

    open_codec_context(fmt_ctx, AVMEDIA_TYPE_VIDEO);

    av_dump_format(fmt_ctx, 0, src_filename, 0);

    if (!video_stream) {
        fprintf(stderr, "Could not find video stream in the input, aborting\n");
        ret = 1;
        goto end;
    }

    frame = av_frame_alloc();
    if (!frame) {
        fprintf(stderr, "Could not allocate frame\n");
        ret = AVERROR(ENOMEM);
        goto end;
    }

    printf("framenum,source,blockw,blockh,srcx,srcy,dstx,dsty,flags\n");


    while (av_read_frame(fmt_ctx, &pkt) >= 0) {
        if (pkt.stream_index == video_stream_idx)
            ret = decode_packet(&pkt);
        av_packet_unref(&pkt);
        if (ret < 0)
            break;
    }


    decode_packet(((void*)0));

end:
    avcodec_free_context(&video_dec_ctx);
    avformat_close_input(&fmt_ctx);
    av_frame_free(&frame);
    return ret < 0;
}
