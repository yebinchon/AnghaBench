
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t uint8_t ;
struct TYPE_3__ {int len; int code; } ;
typedef int PutBitContext ;
typedef TYPE_1__ HuffEntry ;


 int flush_put_bits (int *) ;
 int init_put_bits (int *,size_t*,int) ;
 int put_bits (int *,int,int ) ;
 int put_bits_count (int *) ;

__attribute__((used)) static int write_huff_codes(uint8_t *src, uint8_t *dst, int dst_size,
                            int width, int height, HuffEntry *he)
{
    PutBitContext pb;
    int i, j;
    int count;

    init_put_bits(&pb, dst, dst_size);


    for (j = 0; j < height; j++) {
        for (i = 0; i < width; i++)
            put_bits(&pb, he[src[i]].len, he[src[i]].code);

        src += width;
    }


    count = put_bits_count(&pb) & 0x1F;

    if (count)
        put_bits(&pb, 32 - count, 0);


    count = put_bits_count(&pb);


    flush_put_bits(&pb);

    return count;
}
