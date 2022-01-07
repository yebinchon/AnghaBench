
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {int skip_frame; int codec; int codec_id; } ;
struct TYPE_10__ {scalar_t__ size; int data; } ;
typedef TYPE_1__ AVPacket ;
typedef int AVFrame ;
typedef TYPE_2__ AVCodecContext ;
typedef int AVCodec ;


 int AVDISCARD_ALL ;
 int AV_LOG_ERROR ;
 int av_assert0 (int) ;
 int * av_frame_alloc () ;
 int av_frame_free (int **) ;
 int av_log (TYPE_2__*,int ,char*) ;
 int avcodec_decode_video2 (TYPE_2__*,int *,int*,TYPE_1__*) ;
 int * avcodec_find_decoder (int ) ;
 int avcodec_is_open (TYPE_2__*) ;
 int avcodec_open2 (TYPE_2__*,int const*,int *) ;
 scalar_t__ avpriv_codec_get_cap_skip_frame_fill_param (int ) ;

__attribute__((used)) static int try_decode_video_frame(AVCodecContext *codec_ctx, AVPacket *pkt, int decode)
{
    int ret = 0;
    int got_frame = 0;
    AVFrame *frame = ((void*)0);
    int skip_frame = codec_ctx->skip_frame;

    if (!avcodec_is_open(codec_ctx)) {
        const AVCodec *codec = avcodec_find_decoder(codec_ctx->codec_id);

        ret = avcodec_open2(codec_ctx, codec, ((void*)0));
        if (ret < 0) {
            av_log(codec_ctx, AV_LOG_ERROR, "Failed to open codec\n");
            goto end;
        }
    }

    frame = av_frame_alloc();
    if (!frame) {
        av_log(((void*)0), AV_LOG_ERROR, "Failed to allocate frame\n");
        goto end;
    }

    if (!decode && avpriv_codec_get_cap_skip_frame_fill_param(codec_ctx->codec)) {
        codec_ctx->skip_frame = AVDISCARD_ALL;
    }

    do {
        ret = avcodec_decode_video2(codec_ctx, frame, &got_frame, pkt);
        av_assert0(decode || (!decode && !got_frame));
        if (ret < 0)
            break;
        pkt->data += ret;
        pkt->size -= ret;

        if (got_frame) {
            break;
        }
    } while (pkt->size > 0);

end:
    codec_ctx->skip_frame = skip_frame;

    av_frame_free(&frame);
    return ret;
}
