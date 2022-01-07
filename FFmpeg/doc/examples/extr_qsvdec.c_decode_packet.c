
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int height; int* linesize; int width; scalar_t__* data; } ;
typedef int DecodeContext ;
typedef int AVPacket ;
typedef int AVIOContext ;
typedef TYPE_1__ AVFrame ;
typedef int AVCodecContext ;


 int AVERROR (int ) ;
 int AVERROR_EOF ;
 int EAGAIN ;
 int FF_ARRAY_ELEMS (scalar_t__*) ;
 int av_frame_unref (TYPE_1__*) ;
 int av_hwframe_transfer_data (TYPE_1__*,TYPE_1__*,int ) ;
 int avcodec_receive_frame (int *,TYPE_1__*) ;
 int avcodec_send_packet (int *,int *) ;
 int avio_write (int *,scalar_t__,int ) ;
 int fprintf (int ,char*) ;
 int stderr ;

__attribute__((used)) static int decode_packet(DecodeContext *decode, AVCodecContext *decoder_ctx,
                         AVFrame *frame, AVFrame *sw_frame,
                         AVPacket *pkt, AVIOContext *output_ctx)
{
    int ret = 0;

    ret = avcodec_send_packet(decoder_ctx, pkt);
    if (ret < 0) {
        fprintf(stderr, "Error during decoding\n");
        return ret;
    }

    while (ret >= 0) {
        int i, j;

        ret = avcodec_receive_frame(decoder_ctx, frame);
        if (ret == AVERROR(EAGAIN) || ret == AVERROR_EOF)
            break;
        else if (ret < 0) {
            fprintf(stderr, "Error during decoding\n");
            return ret;
        }




        ret = av_hwframe_transfer_data(sw_frame, frame, 0);
        if (ret < 0) {
            fprintf(stderr, "Error transferring the data to system memory\n");
            goto fail;
        }

        for (i = 0; i < FF_ARRAY_ELEMS(sw_frame->data) && sw_frame->data[i]; i++)
            for (j = 0; j < (sw_frame->height >> (i > 0)); j++)
                avio_write(output_ctx, sw_frame->data[i] + j * sw_frame->linesize[i], sw_frame->width);

fail:
        av_frame_unref(sw_frame);
        av_frame_unref(frame);

        if (ret < 0)
            return ret;
    }

    return 0;
}
