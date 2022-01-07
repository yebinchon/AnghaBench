
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int pb; } ;
struct TYPE_5__ {TYPE_1__ s; } ;
typedef TYPE_1__ MpegEncContext ;
typedef TYPE_2__ H261Context ;


 int** ff_h261_mv_tab ;
 int put_bits (int *,int,int) ;

__attribute__((used)) static void h261_encode_motion(H261Context *h, int val)
{
    MpegEncContext *const s = &h->s;
    int sign, code;
    if (val == 0) {
        code = 0;
        put_bits(&s->pb, ff_h261_mv_tab[code][1], ff_h261_mv_tab[code][0]);
    } else {
        if (val > 15)
            val -= 32;
        if (val < -16)
            val += 32;
        sign = val < 0;
        code = sign ? -val : val;
        put_bits(&s->pb, ff_h261_mv_tab[code][1], ff_h261_mv_tab[code][0]);
        put_bits(&s->pb, 1, sign);
    }
}
