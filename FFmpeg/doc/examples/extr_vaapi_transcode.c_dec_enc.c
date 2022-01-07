
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {int height; int width; int framerate; int hw_frames_ctx; } ;
struct TYPE_10__ {int time_base; int height; int width; int pix_fmt; int hw_frames_ctx; } ;
struct TYPE_9__ {int codecpar; int time_base; } ;
typedef int AVPacket ;
typedef int AVFrame ;
typedef int AVCodec ;


 int AVERROR (int ) ;
 int AVERROR_EOF ;
 int AV_PIX_FMT_VAAPI ;
 int EAGAIN ;
 int ENOMEM ;
 int av_buffer_ref (int ) ;
 char* av_err2str (int) ;
 int * av_frame_alloc () ;
 int av_frame_free (int **) ;
 int av_inv_q (int ) ;
 int avcodec_open2 (TYPE_2__*,int *,int *) ;
 int avcodec_parameters_from_context (int ,TYPE_2__*) ;
 int avcodec_receive_frame (TYPE_3__*,int *) ;
 int avcodec_send_packet (TYPE_3__*,int *) ;
 TYPE_1__* avformat_new_stream (int ,int *) ;
 int avformat_write_header (int ,int *) ;
 TYPE_3__* decoder_ctx ;
 int encode_write (int *) ;
 TYPE_2__* encoder_ctx ;
 int fprintf (int ,char*,...) ;
 int initialized ;
 int ofmt_ctx ;
 TYPE_1__* ost ;
 int stderr ;

__attribute__((used)) static int dec_enc(AVPacket *pkt, AVCodec *enc_codec)
{
    AVFrame *frame;
    int ret = 0;

    ret = avcodec_send_packet(decoder_ctx, pkt);
    if (ret < 0) {
        fprintf(stderr, "Error during decoding. Error code: %s\n", av_err2str(ret));
        return ret;
    }

    while (ret >= 0) {
        if (!(frame = av_frame_alloc()))
            return AVERROR(ENOMEM);

        ret = avcodec_receive_frame(decoder_ctx, frame);
        if (ret == AVERROR(EAGAIN) || ret == AVERROR_EOF) {
            av_frame_free(&frame);
            return 0;
        } else if (ret < 0) {
            fprintf(stderr, "Error while decoding. Error code: %s\n", av_err2str(ret));
            goto fail;
        }

        if (!initialized) {


            encoder_ctx->hw_frames_ctx = av_buffer_ref(decoder_ctx->hw_frames_ctx);
            if (!encoder_ctx->hw_frames_ctx) {
                ret = AVERROR(ENOMEM);
                goto fail;
            }




            encoder_ctx->time_base = av_inv_q(decoder_ctx->framerate);
            encoder_ctx->pix_fmt = AV_PIX_FMT_VAAPI;
            encoder_ctx->width = decoder_ctx->width;
            encoder_ctx->height = decoder_ctx->height;

            if ((ret = avcodec_open2(encoder_ctx, enc_codec, ((void*)0))) < 0) {
                fprintf(stderr, "Failed to open encode codec. Error code: %s\n",
                        av_err2str(ret));
                goto fail;
            }

            if (!(ost = avformat_new_stream(ofmt_ctx, enc_codec))) {
                fprintf(stderr, "Failed to allocate stream for output format.\n");
                ret = AVERROR(ENOMEM);
                goto fail;
            }

            ost->time_base = encoder_ctx->time_base;
            ret = avcodec_parameters_from_context(ost->codecpar, encoder_ctx);
            if (ret < 0) {
                fprintf(stderr, "Failed to copy the stream parameters. "
                        "Error code: %s\n", av_err2str(ret));
                goto fail;
            }


            if ((ret = avformat_write_header(ofmt_ctx, ((void*)0))) < 0) {
                fprintf(stderr, "Error while writing stream header. "
                        "Error code: %s\n", av_err2str(ret));
                goto fail;
            }

            initialized = 1;
        }

        if ((ret = encode_write(frame)) < 0)
            fprintf(stderr, "Error during encoding and writing.\n");

fail:
        av_frame_free(&frame);
        if (ret < 0)
            return ret;
    }
    return 0;
}
