
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_7__ {TYPE_1__* priv_data; } ;
struct TYPE_6__ {int swf_frame_number; int video_par; int sound_samples; int audio_fifo; } ;
typedef TYPE_1__ SWFContext ;
typedef TYPE_2__ AVFormatContext ;
typedef int AVCodecParameters ;


 scalar_t__ AUDIO_FIFO_SIZE ;
 int AV_LOG_ERROR ;
 int AV_LOG_INFO ;
 int av_fifo_generic_write (int ,int *,int,int *) ;
 scalar_t__ av_fifo_size (int ) ;
 scalar_t__ av_get_audio_frame_duration2 (int *,int) ;
 int av_log (TYPE_2__*,int ,char*) ;
 int swf_write_video (TYPE_2__*,int *,int ,int ) ;

__attribute__((used)) static int swf_write_audio(AVFormatContext *s,
                           AVCodecParameters *par, uint8_t *buf, int size)
{
    SWFContext *swf = s->priv_data;


    if (swf->swf_frame_number == 16000)
        av_log(s, AV_LOG_INFO, "warning: Flash Player limit of 16000 frames reached\n");

    if (av_fifo_size(swf->audio_fifo) + size > AUDIO_FIFO_SIZE) {
        av_log(s, AV_LOG_ERROR, "audio fifo too small to mux audio essence\n");
        return -1;
    }

    av_fifo_generic_write(swf->audio_fifo, buf, size, ((void*)0));
    swf->sound_samples += av_get_audio_frame_duration2(par, size);


    if (!swf->video_par)
        swf_write_video(s, par, 0, 0);

    return 0;
}
