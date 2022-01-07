
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {struct TYPE_6__* noise_buf; } ;
struct TYPE_5__ {int channels; TYPE_4__* state; int ac_out; int ac_in; int s16_data; int flt_data; } ;
typedef TYPE_1__ DitherContext ;


 int av_free (TYPE_4__*) ;
 int av_freep (TYPE_1__**) ;
 int ff_audio_convert_free (int *) ;
 int ff_audio_data_free (int *) ;

void ff_dither_free(DitherContext **cp)
{
    DitherContext *c = *cp;
    int ch;

    if (!c)
        return;
    ff_audio_data_free(&c->flt_data);
    ff_audio_data_free(&c->s16_data);
    ff_audio_convert_free(&c->ac_in);
    ff_audio_convert_free(&c->ac_out);
    for (ch = 0; ch < c->channels; ch++)
        av_free(c->state[ch].noise_buf);
    av_free(c->state);
    av_freep(cp);
}
