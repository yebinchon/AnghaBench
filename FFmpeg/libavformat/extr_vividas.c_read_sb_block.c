
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char uint8_t ;
typedef int uint32_t ;
typedef int AVIOContext ;


 int av_free (char*) ;
 char* av_malloc (unsigned int) ;
 unsigned int avio_read (int *,char*,unsigned int) ;
 int decode_block (char*,char*,unsigned int,int ,int *,int ) ;
 unsigned int get_v (char*,int) ;
 int memcpy (char*,char*,int) ;
 int recover_key (char*,unsigned int) ;

__attribute__((used)) static uint8_t *read_sb_block(AVIOContext *src, unsigned *size,
                              uint32_t *key, unsigned expected_size)
{
    uint8_t *buf;
    uint8_t ibuf[8], sbuf[8];
    uint32_t k2;
    unsigned n;

    if (avio_read(src, ibuf, 8) < 8)
        return ((void*)0);

    k2 = *key;
    decode_block(ibuf, sbuf, 8, *key, &k2, 0);

    n = get_v(sbuf+2, 6);

    if (sbuf[0] != 'S' || sbuf[1] != 'B' || (expected_size>0 && n != expected_size)) {
        uint32_t tmpkey = recover_key(ibuf, expected_size);
        k2 = tmpkey;
        decode_block(ibuf, sbuf, 8, tmpkey, &k2, 0);
        n = get_v(sbuf+2, 6);
        if (sbuf[0] != 'S' || sbuf[1] != 'B' || expected_size != n)
            return ((void*)0);
        *key = tmpkey;
    }

    if (n < 8)
        return ((void*)0);

    buf = av_malloc(n);
    if (!buf)
        return ((void*)0);

    memcpy(buf, sbuf, 8);

    *size = n;
    n -= 8;

    if (avio_read(src, buf+8, n) < n) {
        av_free(buf);
        return ((void*)0);
    }

    decode_block(buf + 8, buf + 8, n, *key, &k2, 0);

    return buf;
}
