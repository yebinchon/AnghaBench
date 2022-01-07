
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* d; struct TYPE_4__* data_ptrs; struct TYPE_4__* sample_peak; struct TYPE_4__* channel_map; struct TYPE_4__* audio_data; struct TYPE_4__* short_term_block_energy_histogram; struct TYPE_4__* block_energy_histogram; } ;
typedef TYPE_1__ FFEBUR128State ;


 int av_free (TYPE_1__*) ;

void ff_ebur128_destroy(FFEBUR128State ** st)
{
    av_free((*st)->d->block_energy_histogram);
    av_free((*st)->d->short_term_block_energy_histogram);
    av_free((*st)->d->audio_data);
    av_free((*st)->d->channel_map);
    av_free((*st)->d->sample_peak);
    av_free((*st)->d->data_ptrs);
    av_free((*st)->d);
    av_free(*st);
    *st = ((void*)0);
}
