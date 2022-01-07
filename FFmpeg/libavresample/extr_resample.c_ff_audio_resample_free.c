
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int filter_bank; int buffer; } ;
typedef TYPE_1__ ResampleContext ;


 int av_free (int ) ;
 int av_freep (TYPE_1__**) ;
 int ff_audio_data_free (int *) ;

void ff_audio_resample_free(ResampleContext **c)
{
    if (!*c)
        return;
    ff_audio_data_free(&(*c)->buffer);
    av_free((*c)->filter_bank);
    av_freep(c);
}
