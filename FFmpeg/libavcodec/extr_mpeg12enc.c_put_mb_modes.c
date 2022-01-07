
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int interlaced_dct; int pb; int frame_pred_frame_dct; } ;
typedef TYPE_1__ MpegEncContext ;


 int put_bits (int *,int,int) ;

__attribute__((used)) static inline void put_mb_modes(MpegEncContext *s, int n, int bits,
                                int has_mv, int field_motion)
{
    put_bits(&s->pb, n, bits);
    if (!s->frame_pred_frame_dct) {
        if (has_mv)

            put_bits(&s->pb, 2, 2 - field_motion);
        put_bits(&s->pb, 1, s->interlaced_dct);
    }
}
