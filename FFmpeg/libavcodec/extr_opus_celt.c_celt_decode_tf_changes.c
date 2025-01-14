
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int transient; size_t size; int framebits; int start_band; int end_band; int* tf_change; } ;
typedef int OpusRangeCoder ;
typedef TYPE_1__ CeltFrame ;


 int**** ff_celt_tf_select ;
 int ff_opus_rc_dec_log (int *,int) ;
 int opus_rc_tell (int *) ;

__attribute__((used)) static void celt_decode_tf_changes(CeltFrame *f, OpusRangeCoder *rc)
{
    int i, diff = 0, tf_select = 0, tf_changed = 0, tf_select_bit;
    int consumed, bits = f->transient ? 2 : 4;

    consumed = opus_rc_tell(rc);
    tf_select_bit = (f->size != 0 && consumed+bits+1 <= f->framebits);

    for (i = f->start_band; i < f->end_band; i++) {
        if (consumed+bits+tf_select_bit <= f->framebits) {
            diff ^= ff_opus_rc_dec_log(rc, bits);
            consumed = opus_rc_tell(rc);
            tf_changed |= diff;
        }
        f->tf_change[i] = diff;
        bits = f->transient ? 4 : 5;
    }

    if (tf_select_bit && ff_celt_tf_select[f->size][f->transient][0][tf_changed] !=
                         ff_celt_tf_select[f->size][f->transient][1][tf_changed])
        tf_select = ff_opus_rc_dec_log(rc, 1);

    for (i = f->start_band; i < f->end_band; i++) {
        f->tf_change[i] = ff_celt_tf_select[f->size][f->transient][tf_select][f->tf_change[i]];
    }
}
