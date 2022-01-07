
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef unsigned int uint32_t ;
typedef int AVIOContext ;


 int av_free (int *) ;
 int * av_malloc (unsigned int) ;
 unsigned int avio_read (int *,int *,unsigned int) ;
 int decode_block (int *,int *,unsigned int,unsigned int,unsigned int*,int) ;
 unsigned int get_v (int *,int) ;
 int memcpy (int *,int *,int) ;

__attribute__((used)) static uint8_t *read_vblock(AVIOContext *src, uint32_t *size,
                            uint32_t key, uint32_t *k2, int align)
{
    uint8_t tmp[4];
    uint8_t *buf;
    unsigned n;

    if (avio_read(src, tmp, 4) != 4)
        return ((void*)0);

    decode_block(tmp, tmp, 4, key, k2, align);

    n = get_v(tmp, 4);
    if (n < 4)
        return ((void*)0);

    buf = av_malloc(n);
    if (!buf)
        return ((void*)0);

    *size = n;
    n -= 4;

    memcpy(buf, tmp, 4);

    if (avio_read(src, buf + 4, n) == n) {
        decode_block(buf + 4, buf + 4, n, key, k2, align);
    } else {
        av_free(buf);
        buf = ((void*)0);
    }

    return buf;
}
