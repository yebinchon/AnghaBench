
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AVPacket ;
typedef int AVFrame ;
typedef int AVFormatContext ;
typedef int AVCodecContext ;


 int AVERROR (int ) ;
 int AVERROR_EOF ;
 int EAGAIN ;
 char* av_err2str (int) ;
 int av_packet_unref (int *) ;
 int av_read_frame (int *,int *) ;
 int avcodec_receive_frame (int *,int *) ;
 int avcodec_send_packet (int *,int *) ;
 int fprintf (int ,char*,char*) ;
 int init_packet (int *) ;
 int stderr ;

__attribute__((used)) static int decode_audio_frame(AVFrame *frame,
                              AVFormatContext *input_format_context,
                              AVCodecContext *input_codec_context,
                              int *data_present, int *finished)
{

    AVPacket input_packet;
    int error;
    init_packet(&input_packet);


    if ((error = av_read_frame(input_format_context, &input_packet)) < 0) {

        if (error == AVERROR_EOF)
            *finished = 1;
        else {
            fprintf(stderr, "Could not read frame (error '%s')\n",
                    av_err2str(error));
            return error;
        }
    }



    if ((error = avcodec_send_packet(input_codec_context, &input_packet)) < 0) {
        fprintf(stderr, "Could not send packet for decoding (error '%s')\n",
                av_err2str(error));
        return error;
    }


    error = avcodec_receive_frame(input_codec_context, frame);


    if (error == AVERROR(EAGAIN)) {
        error = 0;
        goto cleanup;

    } else if (error == AVERROR_EOF) {
        *finished = 1;
        error = 0;
        goto cleanup;
    } else if (error < 0) {
        fprintf(stderr, "Could not decode frame (error '%s')\n",
                av_err2str(error));
        goto cleanup;

    } else {
        *data_present = 1;
        goto cleanup;
    }

cleanup:
    av_packet_unref(&input_packet);
    return error;
}
