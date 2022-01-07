
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ use_channel_map; int mix_matrix; int am; int resample; int ac_out; int ac_in; int * out_fifo; int out_buffer; int resample_out_buffer; int in_buffer; } ;
typedef TYPE_1__ AVAudioResampleContext ;


 int av_audio_fifo_free (int *) ;
 int av_freep (int *) ;
 int ff_audio_convert_free (int *) ;
 int ff_audio_data_free (int *) ;
 int ff_audio_mix_free (int *) ;
 int ff_audio_resample_free (int *) ;

void avresample_close(AVAudioResampleContext *avr)
{
    ff_audio_data_free(&avr->in_buffer);
    ff_audio_data_free(&avr->resample_out_buffer);
    ff_audio_data_free(&avr->out_buffer);
    av_audio_fifo_free(avr->out_fifo);
    avr->out_fifo = ((void*)0);
    ff_audio_convert_free(&avr->ac_in);
    ff_audio_convert_free(&avr->ac_out);
    ff_audio_resample_free(&avr->resample);
    ff_audio_mix_free(&avr->am);
    av_freep(&avr->mix_matrix);

    avr->use_channel_map = 0;
}
