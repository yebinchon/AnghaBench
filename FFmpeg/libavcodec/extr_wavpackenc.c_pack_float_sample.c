
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int int32_t ;
struct TYPE_3__ {int float_max_exp; int float_flags; int pb; } ;
typedef TYPE_1__ WavPackEncodeContext ;
typedef int PutBitContext ;


 int FLOAT_NEG_ZEROS ;
 int FLOAT_SHIFT_SAME ;
 int FLOAT_SHIFT_SENT ;
 int FLOAT_ZEROS_SENT ;
 int get_exponent (int) ;
 int get_mantissa (int) ;
 int get_sign (int) ;
 int put_bits (int *,int,int) ;
 int put_sbits (int *,int,int) ;

__attribute__((used)) static void pack_float_sample(WavPackEncodeContext *s, int32_t *sample)
{
    const int max_exp = s->float_max_exp;
    PutBitContext *pb = &s->pb;
    int32_t value, shift_count;

    if (get_exponent(*sample) == 255) {
        if (get_mantissa(*sample)) {
            put_bits(pb, 1, 1);
            put_bits(pb, 23, get_mantissa(*sample));
        } else {
            put_bits(pb, 1, 0);
        }

        value = 0x1000000;
        shift_count = 0;
    } else if (get_exponent(*sample)) {
        shift_count = max_exp - get_exponent(*sample);
        value = 0x800000 + get_mantissa(*sample);
    } else {
        shift_count = max_exp ? max_exp - 1 : 0;
        value = get_mantissa(*sample);
    }

    if (shift_count < 25)
        value >>= shift_count;
    else
        value = 0;

    if (!value) {
        if (s->float_flags & FLOAT_ZEROS_SENT) {
            if (get_exponent(*sample) || get_mantissa(*sample)) {
                put_bits(pb, 1, 1);
                put_bits(pb, 23, get_mantissa(*sample));

                if (max_exp >= 25)
                    put_bits(pb, 8, get_exponent(*sample));

                put_bits(pb, 1, get_sign(*sample));
            } else {
                put_bits(pb, 1, 0);

                if (s->float_flags & FLOAT_NEG_ZEROS)
                    put_bits(pb, 1, get_sign(*sample));
            }
        }
    } else if (shift_count) {
        if (s->float_flags & FLOAT_SHIFT_SENT) {
            put_sbits(pb, shift_count, get_mantissa(*sample));
        } else if (s->float_flags & FLOAT_SHIFT_SAME) {
            put_bits(pb, 1, get_mantissa(*sample) & 1);
        }
    }
}
