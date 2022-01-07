
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t uint8_t ;
typedef int ptrdiff_t ;
typedef int buf ;
struct TYPE_3__ {unsigned int pos; size_t* buf; } ;
typedef TYPE_1__ DSDContext ;


 unsigned int CTABLES ;
 unsigned int FIFOMASK ;
 int FIFOSIZE ;
 scalar_t__** ctables ;
 size_t const* ff_reverse ;
 int memcpy (size_t*,size_t*,int) ;

void ff_dsd2pcm_translate(DSDContext* s, size_t samples, int lsbf,
                          const uint8_t *src, ptrdiff_t src_stride,
                          float *dst, ptrdiff_t dst_stride)
{
    uint8_t buf[FIFOSIZE];
    unsigned pos, i;
    uint8_t* p;
    double sum;

    pos = s->pos;

    memcpy(buf, s->buf, sizeof(buf));

    while (samples-- > 0) {
        buf[pos] = lsbf ? ff_reverse[*src] : *src;
        src += src_stride;

        p = buf + ((pos - CTABLES) & FIFOMASK);
        *p = ff_reverse[*p];

        sum = 0.0;
        for (i = 0; i < CTABLES; i++) {
            uint8_t a = buf[(pos - i) & FIFOMASK];
            uint8_t b = buf[(pos - (CTABLES*2 - 1) + i) & FIFOMASK];
            sum += ctables[i][a] + ctables[i][b];
        }

        *dst = (float)sum;
        dst += dst_stride;

        pos = (pos + 1) & FIFOMASK;
    }

    s->pos = pos;
    memcpy(s->buf, buf, sizeof(buf));
}
