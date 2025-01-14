
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int framebits; int start_band; int end_band; int channels; int* fine_priority; scalar_t__* fine_bits; TYPE_1__* block; } ;
struct TYPE_4__ {float* energy; } ;
typedef int OpusRangeCoder ;
typedef TYPE_2__ CeltFrame ;


 scalar_t__ CELT_MAX_FINE_BITS ;
 int ff_opus_rc_get_raw (int *,int) ;
 int opus_rc_tell (int *) ;

__attribute__((used)) static void celt_decode_final_energy(CeltFrame *f, OpusRangeCoder *rc)
{
    int priority, i, j;
    int bits_left = f->framebits - opus_rc_tell(rc);

    for (priority = 0; priority < 2; priority++) {
        for (i = f->start_band; i < f->end_band && bits_left >= f->channels; i++) {
            if (f->fine_priority[i] != priority || f->fine_bits[i] >= CELT_MAX_FINE_BITS)
                continue;

            for (j = 0; j < f->channels; j++) {
                int q2;
                float offset;
                q2 = ff_opus_rc_get_raw(rc, 1);
                offset = (q2 - 0.5f) * (1 << (14 - f->fine_bits[i] - 1)) / 16384.0f;
                f->block[j].energy[i] += offset;
                bits_left--;
            }
        }
    }
}
