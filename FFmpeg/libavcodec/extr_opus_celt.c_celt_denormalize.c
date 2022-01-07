
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {float* energy; } ;
struct TYPE_5__ {int start_band; int end_band; int size; } ;
typedef TYPE_1__ CeltFrame ;
typedef TYPE_2__ CeltBlock ;


 int FFMIN (float,float) ;
 float exp2f (int ) ;
 int* ff_celt_freq_bands ;
 int* ff_celt_freq_range ;
 float* ff_celt_mean_energy ;

__attribute__((used)) static void celt_denormalize(CeltFrame *f, CeltBlock *block, float *data)
{
    int i, j;

    for (i = f->start_band; i < f->end_band; i++) {
        float *dst = data + (ff_celt_freq_bands[i] << f->size);
        float log_norm = block->energy[i] + ff_celt_mean_energy[i];
        float norm = exp2f(FFMIN(log_norm, 32.0f));

        for (j = 0; j < ff_celt_freq_range[i] << f->size; j++)
            dst[j] *= norm;
    }
}
