
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef void* uint32_t ;
typedef int uint16_t ;
struct TYPE_4__ {int table; } ;
struct TYPE_5__ {size_t frame_len_bits; size_t block_len_bits; int block_len; int version; float* max_exponent; int avctx; TYPE_1__ exp_vlc; int gb; scalar_t__* exponents; int ** exponent_bands; } ;
typedef TYPE_2__ WMACodecContext ;


 int AV_LOG_ERROR ;
 int EXPMAX ;
 int EXPVLCBITS ;
 unsigned int FF_ARRAY_ELEMS (float*) ;
 int av_log (int ,int ,char*,...) ;
 int get_bits (int *,int) ;
 int get_vlc2 (int *,int ,int ,int ) ;
 float* pow_tab ;

__attribute__((used)) static int decode_exp_vlc(WMACodecContext *s, int ch)
{
    int last_exp, n, code;
    const uint16_t *ptr;
    float v, max_scale;
    uint32_t *q, *q_end, iv;
    const float *ptab = pow_tab + 60;
    const uint32_t *iptab = (const uint32_t *) ptab;

    ptr = s->exponent_bands[s->frame_len_bits - s->block_len_bits];
    q = (uint32_t *) s->exponents[ch];
    q_end = q + s->block_len;
    max_scale = 0;
    if (s->version == 1) {
        last_exp = get_bits(&s->gb, 5) + 10;
        v = ptab[last_exp];
        iv = iptab[last_exp];
        max_scale = v;
        n = *ptr++;
        switch (n & 3) do {
        case 0: *q++ = iv;
        case 3: *q++ = iv;
        case 2: *q++ = iv;
        case 1: *q++ = iv;
        } while ((n -= 4) > 0);
    } else
        last_exp = 36;

    while (q < q_end) {
        code = get_vlc2(&s->gb, s->exp_vlc.table, EXPVLCBITS, EXPMAX);
        if (code < 0) {
            av_log(s->avctx, AV_LOG_ERROR, "Exponent vlc invalid\n");
            return -1;
        }

        last_exp += code - 60;
        if ((unsigned) last_exp + 60 >= FF_ARRAY_ELEMS(pow_tab)) {
            av_log(s->avctx, AV_LOG_ERROR, "Exponent out of range: %d\n",
                   last_exp);
            return -1;
        }
        v = ptab[last_exp];
        iv = iptab[last_exp];
        if (v > max_scale)
            max_scale = v;
        n = *ptr++;
        switch (n & 3) do {
        case 0: *q++ = iv;
        case 3: *q++ = iv;
        case 2: *q++ = iv;
        case 1: *q++ = iv;
        } while ((n -= 4) > 0);
    }
    s->max_exponent[ch] = max_scale;
    return 0;
}
