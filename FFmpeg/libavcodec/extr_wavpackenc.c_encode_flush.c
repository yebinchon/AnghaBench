
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int zeros_acc; int holding_one; int pend_count; int pend_data; scalar_t__ holding_zero; } ;
typedef TYPE_1__ WavPackWords ;
struct TYPE_5__ {int pb; TYPE_1__ w; } ;
typedef TYPE_2__ WavPackEncodeContext ;
typedef int PutBitContext ;


 int count_bits (int) ;
 int put_bits (int *,int,int) ;

__attribute__((used)) static void encode_flush(WavPackEncodeContext *s)
{
    WavPackWords *w = &s->w;
    PutBitContext *pb = &s->pb;

    if (w->zeros_acc) {
        int cbits = count_bits(w->zeros_acc);

        do {
            if (cbits > 31) {
                put_bits(pb, 31, 0x7FFFFFFF);
                cbits -= 31;
            } else {
                put_bits(pb, cbits, (1 << cbits) - 1);
                cbits = 0;
            }
        } while (cbits);

        put_bits(pb, 1, 0);

        while (w->zeros_acc > 1) {
            put_bits(pb, 1, w->zeros_acc & 1);
            w->zeros_acc >>= 1;
        }

        w->zeros_acc = 0;
    }

    if (w->holding_one) {
        if (w->holding_one >= 16) {
            int cbits;

            put_bits(pb, 16, (1 << 16) - 1);
            put_bits(pb, 1, 0);
            w->holding_one -= 16;
            cbits = count_bits(w->holding_one);

            do {
                if (cbits > 31) {
                    put_bits(pb, 31, 0x7FFFFFFF);
                    cbits -= 31;
                } else {
                    put_bits(pb, cbits, (1 << cbits) - 1);
                    cbits = 0;
                }
            } while (cbits);

            put_bits(pb, 1, 0);

            while (w->holding_one > 1) {
                put_bits(pb, 1, w->holding_one & 1);
                w->holding_one >>= 1;
            }

            w->holding_zero = 0;
        } else {
            put_bits(pb, w->holding_one, (1 << w->holding_one) - 1);
        }

        w->holding_one = 0;
    }

    if (w->holding_zero) {
        put_bits(pb, 1, 0);
        w->holding_zero = 0;
    }

    if (w->pend_count) {
        put_bits(pb, w->pend_count, w->pend_data);
        w->pend_data = w->pend_count = 0;
    }
}
