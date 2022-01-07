
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {float* error_energy; } ;
struct TYPE_4__ {int start_band; int end_band; int* fine_bits; int channels; TYPE_2__* block; } ;
typedef int OpusRangeCoder ;
typedef TYPE_1__ CeltFrame ;
typedef TYPE_2__ CeltBlock ;


 int av_clip (int ,int ,int) ;
 int ff_opus_rc_put_raw (int *,int,int) ;
 int floor (float) ;

__attribute__((used)) static void celt_quant_fine(CeltFrame *f, OpusRangeCoder *rc)
{
    for (int i = f->start_band; i < f->end_band; i++) {
        if (!f->fine_bits[i])
            continue;
        for (int ch = 0; ch < f->channels; ch++) {
            CeltBlock *block = &f->block[ch];
            int quant, lim = (1 << f->fine_bits[i]);
            float offset, diff = 0.5f - block->error_energy[i];
            quant = av_clip(floor(diff*lim), 0, lim - 1);
            ff_opus_rc_put_raw(rc, quant, f->fine_bits[i]);
            offset = 0.5f - ((quant + 0.5f) * (1 << (14 - f->fine_bits[i])) / 16384.0f);
            block->error_energy[i] -= offset;
        }
    }
}
