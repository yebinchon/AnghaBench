
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int height; int width; int codec_type; } ;
struct TYPE_5__ {char* copy_initial_nonkeyframes; int stream_copy; TYPE_2__* enc_ctx; int * st; } ;
typedef TYPE_1__ OutputStream ;
typedef int OptionsContext ;
typedef int AVStream ;
typedef int AVFormatContext ;
typedef TYPE_2__ AVCodecContext ;


 int AVMEDIA_TYPE_SUBTITLE ;
 int AV_LOG_FATAL ;
 int MATCH_PER_STREAM_OPT (int ,int ,char*,int *,int *) ;
 int av_log (int *,int ,char*,char*) ;
 scalar_t__ av_parse_video_size (int *,int *,char*) ;
 int copy_initial_nonkeyframes ;
 int exit_program (int) ;
 int frame_sizes ;
 int i ;
 TYPE_1__* new_output_stream (int *,int *,int ,int) ;
 int str ;

__attribute__((used)) static OutputStream *new_subtitle_stream(OptionsContext *o, AVFormatContext *oc, int source_index)
{
    AVStream *st;
    OutputStream *ost;
    AVCodecContext *subtitle_enc;

    ost = new_output_stream(o, oc, AVMEDIA_TYPE_SUBTITLE, source_index);
    st = ost->st;
    subtitle_enc = ost->enc_ctx;

    subtitle_enc->codec_type = AVMEDIA_TYPE_SUBTITLE;

    MATCH_PER_STREAM_OPT(copy_initial_nonkeyframes, i, ost->copy_initial_nonkeyframes, oc, st);

    if (!ost->stream_copy) {
        char *frame_size = ((void*)0);

        MATCH_PER_STREAM_OPT(frame_sizes, str, frame_size, oc, st);
        if (frame_size && av_parse_video_size(&subtitle_enc->width, &subtitle_enc->height, frame_size) < 0) {
            av_log(((void*)0), AV_LOG_FATAL, "Invalid frame size: %s.\n", frame_size);
            exit_program(1);
        }
    }

    return ost;
}
