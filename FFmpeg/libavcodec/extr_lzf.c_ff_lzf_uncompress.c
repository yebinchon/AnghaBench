
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int int64_t ;
typedef int GetByteContext ;


 int AVERROR_INVALIDDATA ;
 int LZF_LITERAL_MAX ;
 int LZF_LONG_BACKREF ;
 int av_memcpy_backptr (int*,int,int) ;
 int av_reallocp (int**,int) ;
 int bytestream2_get_buffer (int *,int*,int) ;
 int bytestream2_get_byte (int *) ;
 int bytestream2_get_bytes_left (int *) ;

int ff_lzf_uncompress(GetByteContext *gb, uint8_t **buf, int64_t *size)
{
    int ret = 0;
    uint8_t *p = *buf;
    int64_t len = 0;

    while (bytestream2_get_bytes_left(gb) > 2) {
        uint8_t s = bytestream2_get_byte(gb);

        if (s < LZF_LITERAL_MAX) {
            s++;
            if (s > *size - len) {
                *size += *size /2;
                ret = av_reallocp(buf, *size);
                if (ret < 0)
                    return ret;
                p = *buf + len;
            }

            bytestream2_get_buffer(gb, p, s);
            p += s;
            len += s;
        } else {
            int l = 2 + (s >> 5);
            int off = ((s & 0x1f) << 8) + 1;

            if (l == LZF_LONG_BACKREF)
                l += bytestream2_get_byte(gb);

            off += bytestream2_get_byte(gb);

            if (off > len)
                return AVERROR_INVALIDDATA;

            if (l > *size - len) {
                *size += *size / 2;
                ret = av_reallocp(buf, *size);
                if (ret < 0)
                    return ret;
                p = *buf + len;
            }

            av_memcpy_backptr(p, off, l);

            p += l;
            len += l;
        }
    }

    *size = len;

    return 0;
}
