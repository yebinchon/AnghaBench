
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int queue; int fill; } ;
typedef int GetByteContext ;
typedef TYPE_1__ Bits32 ;


 int bytestream2_get_le16 (int *) ;

__attribute__((used)) static int read_bits32(Bits32 *bits, GetByteContext *gb, int nbits)
{
    int res = bits->queue & ((1 << nbits) - 1);

    bits->queue >>= nbits;
    bits->fill -= nbits;
    if (bits->fill <= 16) {
        bits->queue |= bytestream2_get_le16(gb) << bits->fill;
        bits->fill += 16;
    }

    return res;
}
