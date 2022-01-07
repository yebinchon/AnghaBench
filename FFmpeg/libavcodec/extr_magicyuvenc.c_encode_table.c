
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_9__ {int len; } ;
struct TYPE_8__ {int value; int prob; int member_0; } ;
typedef int PutBitContext ;
typedef TYPE_1__ PTable ;
typedef TYPE_2__ HuffEntry ;
typedef int AVCodecContext ;


 int calculate_codes (TYPE_2__*) ;
 int count_usage (int *,int,int,TYPE_1__*) ;
 int magy_huffman_compute_bits (TYPE_1__*,TYPE_2__*,int,int) ;
 int put_bits (int *,int,int ) ;

__attribute__((used)) static int encode_table(AVCodecContext *avctx, uint8_t *dst,
                        int width, int height,
                        PutBitContext *pb, HuffEntry *he)
{
    PTable counts[256] = { {0} };
    int i;

    count_usage(dst, width, height, counts);

    for (i = 0; i < 256; i++) {
        counts[i].prob++;
        counts[i].value = 255 - i;
    }

    magy_huffman_compute_bits(counts, he, 256, 12);

    calculate_codes(he);

    for (i = 0; i < 256; i++) {
        put_bits(pb, 1, 0);
        put_bits(pb, 7, he[i].len);
    }

    return 0;
}
