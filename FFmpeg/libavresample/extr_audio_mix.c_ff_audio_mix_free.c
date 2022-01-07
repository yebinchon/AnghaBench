
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int matrix_flt; int matrix_q15; int matrix_q8; int * matrix; } ;
typedef TYPE_1__ AudioMix ;


 int av_free (int ) ;
 int av_freep (TYPE_1__**) ;
 int memset (int ,int ,int) ;

void ff_audio_mix_free(AudioMix **am_p)
{
    AudioMix *am;

    if (!*am_p)
        return;
    am = *am_p;

    if (am->matrix) {
        av_free(am->matrix[0]);
        am->matrix = ((void*)0);
    }
    memset(am->matrix_q8, 0, sizeof(am->matrix_q8 ));
    memset(am->matrix_q15, 0, sizeof(am->matrix_q15));
    memset(am->matrix_flt, 0, sizeof(am->matrix_flt));

    av_freep(am_p);
}
