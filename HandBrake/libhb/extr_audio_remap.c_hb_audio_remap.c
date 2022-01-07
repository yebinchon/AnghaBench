
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int table; int nchannels; int (* remap ) (int **,int,int ,int ) ;scalar_t__ remap_needed; } ;
typedef TYPE_1__ hb_audio_remap_t ;


 int stub1 (int **,int,int ,int ) ;

void hb_audio_remap(hb_audio_remap_t *remap, uint8_t **samples, int nsamples)
{
    if (remap != ((void*)0) && remap->remap_needed)
    {
        remap->remap(samples, nsamples, remap->nchannels, remap->table);
    }
}
