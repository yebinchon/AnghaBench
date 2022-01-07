
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int k_modifier; } ;
struct TYPE_5__ {int pbctx; TYPE_1__ rc; } ;
typedef TYPE_2__ AlacEncodeContext ;


 int ALAC_ESCAPE_CODE ;
 int FFMIN (int,int ) ;
 int put_bits (int *,int,int) ;

__attribute__((used)) static void encode_scalar(AlacEncodeContext *s, int x,
                          int k, int write_sample_size)
{
    int divisor, q, r;

    k = FFMIN(k, s->rc.k_modifier);
    divisor = (1<<k) - 1;
    q = x / divisor;
    r = x % divisor;

    if (q > 8) {

        put_bits(&s->pbctx, 9, ALAC_ESCAPE_CODE);
        put_bits(&s->pbctx, write_sample_size, x);
    } else {
        if (q)
            put_bits(&s->pbctx, q, (1<<q) - 1);
        put_bits(&s->pbctx, 1, 0);

        if (k != 1) {
            if (r > 0)
                put_bits(&s->pbctx, k, r+1);
            else
                put_bits(&s->pbctx, k-1, 0);
        }
    }
}
