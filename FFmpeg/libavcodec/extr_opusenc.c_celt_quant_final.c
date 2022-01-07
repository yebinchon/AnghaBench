
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {float* error_energy; } ;
struct TYPE_4__ {int start_band; int end_band; scalar_t__ framebits; scalar_t__ channels; int* fine_priority; int* fine_bits; TYPE_2__* block; } ;
typedef int OpusRangeCoder ;
typedef int OpusEncContext ;
typedef TYPE_1__ CeltFrame ;
typedef TYPE_2__ CeltBlock ;


 int CELT_MAX_FINE_BITS ;
 scalar_t__ FFABS (float const) ;
 int ff_opus_rc_put_raw (int *,int const,int) ;
 scalar_t__ opus_rc_tell (int *) ;

__attribute__((used)) static void celt_quant_final(OpusEncContext *s, OpusRangeCoder *rc, CeltFrame *f)
{
    for (int priority = 0; priority < 2; priority++) {
        for (int i = f->start_band; i < f->end_band && (f->framebits - opus_rc_tell(rc)) >= f->channels; i++) {
            if (f->fine_priority[i] != priority || f->fine_bits[i] >= CELT_MAX_FINE_BITS)
                continue;
            for (int ch = 0; ch < f->channels; ch++) {
                CeltBlock *block = &f->block[ch];
                const float err = block->error_energy[i];
                const float offset = 0.5f * (1 << (14 - f->fine_bits[i] - 1)) / 16384.0f;
                const int sign = FFABS(err + offset) < FFABS(err - offset);
                ff_opus_rc_put_raw(rc, sign, 1);
                block->error_energy[i] -= offset*(1 - 2*sign);
            }
        }
    }
}
