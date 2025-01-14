
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int GetByteContext ;


 int AVERROR_INVALIDDATA ;
 int SEEK_CUR ;
 scalar_t__ bytestream2_get_bytes_left (int *) ;
 unsigned int bytestream2_get_le16 (int *) ;
 int bytestream2_get_le32 (int *) ;
 int bytestream2_seek (int *,int,int ) ;
 int memset (int*,int ,int) ;

__attribute__((used)) static int fill_ltable(GetByteContext *gb, uint32_t *table, int *nb_elements)
{
    unsigned half = 512, bits = 1023, left = 1024, input, mask;
    int value, counter = 0, rshift = 10, lshift = 30;

    mask = bytestream2_get_le32(gb) >> 2;
    while (left) {
        if (counter >= 256)
            return AVERROR_INVALIDDATA;
        value = bits & mask;
        left -= bits & mask;
        mask >>= rshift;
        lshift -= rshift;
        table[counter++] = value;
        if (lshift < 16) {
            if (bytestream2_get_bytes_left(gb) <= 0)
                return AVERROR_INVALIDDATA;

            input = bytestream2_get_le16(gb);
            mask += input << lshift;
            lshift += 16;
        }
        if (left < half) {
            half >>= 1;
            bits >>= 1;
            rshift--;
        }
    }

    for (; !table[counter - 1]; counter--)
        if (counter <= 0)
            return AVERROR_INVALIDDATA;

    *nb_elements = counter;

    if (counter < 256)
        memset(&table[counter], 0, 4 * (256 - counter));

    if (lshift >= 16)
        bytestream2_seek(gb, -2, SEEK_CUR);

    return 0;
}
