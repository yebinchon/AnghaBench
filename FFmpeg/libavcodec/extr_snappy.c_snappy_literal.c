
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int GetByteContext ;


 int AVERROR_INVALIDDATA ;
 int bytestream2_get_buffer (int *,int *,unsigned int) ;
 unsigned int bytestream2_get_byte (int *) ;
 unsigned int bytestream2_get_le16 (int *) ;
 unsigned int bytestream2_get_le24 (int *) ;
 unsigned int bytestream2_get_le32 (int *) ;

__attribute__((used)) static int snappy_literal(GetByteContext *gb, uint8_t *p, int size, int val)
{
    unsigned int len = 1;

    switch (val) {
    case 63:
        len += bytestream2_get_le32(gb);
        break;
    case 62:
        len += bytestream2_get_le24(gb);
        break;
    case 61:
        len += bytestream2_get_le16(gb);
        break;
    case 60:
        len += bytestream2_get_byte(gb);
        break;
    default:
        len += val;
    }

    if (size < len)
        return AVERROR_INVALIDDATA;

    bytestream2_get_buffer(gb, p, len);

    return len;
}
