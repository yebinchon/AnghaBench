
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int f_code; int pb; } ;
typedef TYPE_1__ MpegEncContext ;


 int** ff_mvtab ;
 int put_bits (int *,int,int) ;

__attribute__((used)) static void msmpeg4v2_encode_motion(MpegEncContext * s, int val)
{
    int range, bit_size, sign, code, bits;

    if (val == 0) {

        code = 0;
        put_bits(&s->pb, ff_mvtab[code][1], ff_mvtab[code][0]);
    } else {
        bit_size = s->f_code - 1;
        range = 1 << bit_size;
        if (val <= -64)
            val += 64;
        else if (val >= 64)
            val -= 64;

        if (val >= 0) {
            sign = 0;
        } else {
            val = -val;
            sign = 1;
        }
        val--;
        code = (val >> bit_size) + 1;
        bits = val & (range - 1);

        put_bits(&s->pb, ff_mvtab[code][1] + 1, (ff_mvtab[code][0] << 1) | sign);
        if (bit_size > 0) {
            put_bits(&s->pb, bit_size, bits);
        }
    }
}
