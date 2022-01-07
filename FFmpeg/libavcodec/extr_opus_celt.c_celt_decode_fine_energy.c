
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {float* energy; } ;
struct TYPE_4__ {int start_band; int end_band; int* fine_bits; int channels; TYPE_2__* block; } ;
typedef int OpusRangeCoder ;
typedef TYPE_1__ CeltFrame ;
typedef TYPE_2__ CeltBlock ;


 int ff_opus_rc_get_raw (int *,int) ;

__attribute__((used)) static void celt_decode_fine_energy(CeltFrame *f, OpusRangeCoder *rc)
{
    int i;
    for (i = f->start_band; i < f->end_band; i++) {
        int j;
        if (!f->fine_bits[i])
            continue;

        for (j = 0; j < f->channels; j++) {
            CeltBlock *block = &f->block[j];
            int q2;
            float offset;
            q2 = ff_opus_rc_get_raw(rc, f->fine_bits[i]);
            offset = (q2 + 0.5f) * (1 << (14 - f->fine_bits[i])) / 16384.0f - 0.5f;
            block->energy[i] += offset;
        }
    }
}
