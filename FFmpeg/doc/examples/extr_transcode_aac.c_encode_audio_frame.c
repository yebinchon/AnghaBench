
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ nb_samples; int pts; } ;
typedef int AVPacket ;
typedef TYPE_1__ AVFrame ;
typedef int AVFormatContext ;
typedef int AVCodecContext ;


 int AVERROR (int ) ;
 int AVERROR_EOF ;
 int EAGAIN ;
 char* av_err2str (int) ;
 int av_packet_unref (int *) ;
 int av_write_frame (int *,int *) ;
 int avcodec_receive_packet (int *,int *) ;
 int avcodec_send_frame (int *,TYPE_1__*) ;
 int fprintf (int ,char*,char*) ;
 int init_packet (int *) ;
 int pts ;
 int stderr ;

__attribute__((used)) static int encode_audio_frame(AVFrame *frame,
                              AVFormatContext *output_format_context,
                              AVCodecContext *output_codec_context,
                              int *data_present)
{

    AVPacket output_packet;
    int error;
    init_packet(&output_packet);


    if (frame) {
        frame->pts = pts;
        pts += frame->nb_samples;
    }



    error = avcodec_send_frame(output_codec_context, frame);

    if (error == AVERROR_EOF) {
        error = 0;
        goto cleanup;
    } else if (error < 0) {
        fprintf(stderr, "Could not send packet for encoding (error '%s')\n",
                av_err2str(error));
        return error;
    }


    error = avcodec_receive_packet(output_codec_context, &output_packet);


    if (error == AVERROR(EAGAIN)) {
        error = 0;
        goto cleanup;

    } else if (error == AVERROR_EOF) {
        error = 0;
        goto cleanup;
    } else if (error < 0) {
        fprintf(stderr, "Could not encode frame (error '%s')\n",
                av_err2str(error));
        goto cleanup;

    } else {
        *data_present = 1;
    }


    if (*data_present &&
        (error = av_write_frame(output_format_context, &output_packet)) < 0) {
        fprintf(stderr, "Could not write frame (error '%s')\n",
                av_err2str(error));
        goto cleanup;
    }

cleanup:
    av_packet_unref(&output_packet);
    return error;
}
