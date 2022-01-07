
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * swresample; } ;
typedef TYPE_1__ hb_audio_resample_t ;


 int free (TYPE_1__*) ;
 int swr_free (int **) ;

void hb_audio_resample_free(hb_audio_resample_t *resample)
{
    if (resample != ((void*)0))
    {
        if (resample->swresample != ((void*)0))
        {
            swr_free(&resample->swresample);
        }
        free(resample);
    }
}
