
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {int pb; } ;
struct TYPE_11__ {scalar_t__ stream_index; scalar_t__ size; int * data; } ;
typedef TYPE_1__ AVPacket ;
typedef int AVCodec ;


 int AVERROR (int ) ;
 int AVIO_FLAG_WRITE ;
 int AV_HWDEVICE_TYPE_VAAPI ;
 int ENOMEM ;
 int av_buffer_unref (int *) ;
 char* av_err2str (int) ;
 int av_hwdevice_ctx_create (int *,int ,int *,int *,int ) ;
 int av_packet_unref (TYPE_1__*) ;
 int av_read_frame (TYPE_2__*,TYPE_1__*) ;
 int av_write_trailer (TYPE_2__*) ;
 int avcodec_alloc_context3 (int *) ;
 int * avcodec_find_encoder_by_name (char*) ;
 int avcodec_free_context (int *) ;
 int avformat_alloc_output_context2 (TYPE_2__**,int *,int *,char*) ;
 int avformat_close_input (TYPE_2__**) ;
 int avio_open (int *,char*,int ) ;
 int dec_enc (TYPE_1__*,int *) ;
 int decoder_ctx ;
 int encode_write (int *) ;
 int encoder_ctx ;
 int fprintf (int ,char*,char*) ;
 int hw_device_ctx ;
 TYPE_2__* ifmt_ctx ;
 TYPE_2__* ofmt_ctx ;
 int open_input_file (char*) ;
 int stderr ;
 scalar_t__ video_stream ;

int main(int argc, char **argv)
{
    int ret = 0;
    AVPacket dec_pkt;
    AVCodec *enc_codec;

    if (argc != 4) {
        fprintf(stderr, "Usage: %s <input file> <encode codec> <output file>\n"
                "The output format is guessed according to the file extension.\n"
                "\n", argv[0]);
        return -1;
    }

    ret = av_hwdevice_ctx_create(&hw_device_ctx, AV_HWDEVICE_TYPE_VAAPI, ((void*)0), ((void*)0), 0);
    if (ret < 0) {
        fprintf(stderr, "Failed to create a VAAPI device. Error code: %s\n", av_err2str(ret));
        return -1;
    }

    if ((ret = open_input_file(argv[1])) < 0)
        goto end;

    if (!(enc_codec = avcodec_find_encoder_by_name(argv[2]))) {
        fprintf(stderr, "Could not find encoder '%s'\n", argv[2]);
        ret = -1;
        goto end;
    }

    if ((ret = (avformat_alloc_output_context2(&ofmt_ctx, ((void*)0), ((void*)0), argv[3]))) < 0) {
        fprintf(stderr, "Failed to deduce output format from file extension. Error code: "
                "%s\n", av_err2str(ret));
        goto end;
    }

    if (!(encoder_ctx = avcodec_alloc_context3(enc_codec))) {
        ret = AVERROR(ENOMEM);
        goto end;
    }

    ret = avio_open(&ofmt_ctx->pb, argv[3], AVIO_FLAG_WRITE);
    if (ret < 0) {
        fprintf(stderr, "Cannot open output file. "
                "Error code: %s\n", av_err2str(ret));
        goto end;
    }


    while (ret >= 0) {
        if ((ret = av_read_frame(ifmt_ctx, &dec_pkt)) < 0)
            break;

        if (video_stream == dec_pkt.stream_index)
            ret = dec_enc(&dec_pkt, enc_codec);

        av_packet_unref(&dec_pkt);
    }


    dec_pkt.data = ((void*)0);
    dec_pkt.size = 0;
    ret = dec_enc(&dec_pkt, enc_codec);
    av_packet_unref(&dec_pkt);


    ret = encode_write(((void*)0));


    av_write_trailer(ofmt_ctx);

end:
    avformat_close_input(&ifmt_ctx);
    avformat_close_input(&ofmt_ctx);
    avcodec_free_context(&decoder_ctx);
    avcodec_free_context(&encoder_ctx);
    av_buffer_unref(&hw_device_ctx);
    return ret;
}
