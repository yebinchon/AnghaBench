
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int fill; int queue; } ;
typedef int GetByteContext ;
typedef TYPE_1__ Bits8 ;


 int bytestream2_get_byte (int *) ;

__attribute__((used)) static int read_bits2(Bits8 *bits, GetByteContext *gb)
{
    int res;

    if (bits->fill == 0) {
        bits->queue |= bytestream2_get_byte(gb);
        bits->fill = 8;
    }
    res = bits->queue >> 6;
    bits->queue <<= 2;
    bits->fill -= 2;

    return res;
}
