
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int GetByteContext ;


 int bytestream2_get_le32 (int *) ;

__attribute__((used)) static int getbit(GetByteContext *gb, uint32_t *bitbuf, int *bits)
{
    int ret;

    if (!*bits) {
        *bitbuf = bytestream2_get_le32(gb);
        *bits = 32;
    }

    ret = *bitbuf >> 31;
    *bitbuf <<= 1;
    (*bits)--;

    return ret;
}
