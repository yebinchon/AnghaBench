
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int transient; size_t size; scalar_t__ framebits; int start_band; int end_band; int* tf_change; int const tf_select; } ;
typedef int OpusRangeCoder ;
typedef TYPE_1__ CeltFrame ;


 scalar_t__**** ff_celt_tf_select ;
 int ff_opus_rc_enc_log (int *,int const,int) ;
 scalar_t__ opus_rc_tell (int *) ;

__attribute__((used)) static void celt_enc_tf(CeltFrame *f, OpusRangeCoder *rc)
{
    int tf_select = 0, diff = 0, tf_changed = 0, tf_select_needed;
    int bits = f->transient ? 2 : 4;

    tf_select_needed = ((f->size && (opus_rc_tell(rc) + bits + 1) <= f->framebits));

    for (int i = f->start_band; i < f->end_band; i++) {
        if ((opus_rc_tell(rc) + bits + tf_select_needed) <= f->framebits) {
            const int tbit = (diff ^ 1) == f->tf_change[i];
            ff_opus_rc_enc_log(rc, tbit, bits);
            diff ^= tbit;
            tf_changed |= diff;
        }
        bits = f->transient ? 4 : 5;
    }

    if (tf_select_needed && ff_celt_tf_select[f->size][f->transient][0][tf_changed] !=
                            ff_celt_tf_select[f->size][f->transient][1][tf_changed]) {
        ff_opus_rc_enc_log(rc, f->tf_select, 1);
        tf_select = f->tf_select;
    }

    for (int i = f->start_band; i < f->end_band; i++)
        f->tf_change[i] = ff_celt_tf_select[f->size][f->transient][tf_select][f->tf_change[i]];
}
