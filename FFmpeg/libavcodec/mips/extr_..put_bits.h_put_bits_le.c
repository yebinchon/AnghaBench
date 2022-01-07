
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int bit_buf; int bit_left; int buf_end; int buf_ptr; } ;
typedef TYPE_1__ PutBitContext ;


 int AV_LOG_ERROR ;
 int AV_WL32 (int,unsigned int) ;
 int av_assert2 (int) ;
 int av_log (int *,int ,char*) ;

__attribute__((used)) static inline void put_bits_le(PutBitContext *s, int n, unsigned int value)
{
    unsigned int bit_buf;
    int bit_left;

    av_assert2(n <= 31 && value < (1U << n));

    bit_buf = s->bit_buf;
    bit_left = s->bit_left;

    bit_buf |= value << (32 - bit_left);
    if (n >= bit_left) {
        if (3 < s->buf_end - s->buf_ptr) {
            AV_WL32(s->buf_ptr, bit_buf);
            s->buf_ptr += 4;
        } else {
            av_log(((void*)0), AV_LOG_ERROR, "Internal error, put_bits buffer too small\n");
            av_assert2(0);
        }
        bit_buf = value >> bit_left;
        bit_left += 32;
    }
    bit_left -= n;

    s->bit_buf = bit_buf;
    s->bit_left = bit_left;
}
