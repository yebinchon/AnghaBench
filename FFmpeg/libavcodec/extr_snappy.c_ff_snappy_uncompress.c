
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ int64_t ;
typedef int GetByteContext ;


 int AVERROR_BUFFER_TOO_SMALL ;




 int bytestream2_get_byte (int *) ;
 scalar_t__ bytestream2_get_bytes_left (int *) ;
 scalar_t__ decode_len (int *) ;
 int snappy_copy1 (int *,int*,int*,scalar_t__,int) ;
 int snappy_copy2 (int *,int*,int*,scalar_t__,int) ;
 int snappy_copy4 (int *,int*,int*,scalar_t__,int) ;
 int snappy_literal (int *,int*,scalar_t__,int) ;

int ff_snappy_uncompress(GetByteContext *gb, uint8_t *buf, int64_t *size)
{
    int64_t len = decode_len(gb);
    int ret = 0;
    uint8_t *p;

    if (len < 0)
        return len;

    if (len > *size)
        return AVERROR_BUFFER_TOO_SMALL;

    *size = len;
    p = buf;

    while (bytestream2_get_bytes_left(gb) > 0) {
        uint8_t s = bytestream2_get_byte(gb);
        int val = s >> 2;

        switch (s & 0x03) {
        case 128:
            ret = snappy_literal(gb, p, len, val);
            break;
        case 131:
            ret = snappy_copy1(gb, buf, p, len, val);
            break;
        case 130:
            ret = snappy_copy2(gb, buf, p, len, val);
            break;
        case 129:
            ret = snappy_copy4(gb, buf, p, len, val);
            break;
        }

        if (ret < 0)
            return ret;

        p += ret;
        len -= ret;
    }

    return 0;
}
