
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int PutBitContext ;


 int AV_RB16 (int const*) ;
 scalar_t__ CONFIG_SMALL ;
 int av_assert0 (int) ;
 int flush_put_bits (int *) ;
 int memcpy (int ,int const*,int) ;
 int put_bits (int *,int,int const) ;
 int put_bits_count (int *) ;
 int put_bits_left (int *) ;
 int put_bits_ptr (int *) ;
 int skip_put_bytes (int *,int) ;

void avpriv_copy_bits(PutBitContext *pb, const uint8_t *src, int length)
{
    int words = length >> 4;
    int bits = length & 15;
    int i;

    if (length == 0)
        return;

    av_assert0(length <= put_bits_left(pb));

    if (CONFIG_SMALL || words < 16 || put_bits_count(pb) & 7) {
        for (i = 0; i < words; i++)
            put_bits(pb, 16, AV_RB16(src + 2 * i));
    } else {
        for (i = 0; put_bits_count(pb) & 31; i++)
            put_bits(pb, 8, src[i]);
        flush_put_bits(pb);
        memcpy(put_bits_ptr(pb), src + i, 2 * words - i);
        skip_put_bytes(pb, 2 * words - i);
    }

    put_bits(pb, bits, AV_RB16(src + 2 * words) >> (16 - bits));
}
