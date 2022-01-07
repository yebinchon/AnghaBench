
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int GetByteContext ;


 int FFMIN (int,int) ;
 int bytestream2_get_be24u (int *) ;
 int bytestream2_get_bytes_left (int *) ;
 int memset (int *,int ,int) ;

__attribute__((used)) static void pcx_palette(GetByteContext *gb, uint32_t *dst, int pallen)
{
    int i;

    pallen = FFMIN(pallen, bytestream2_get_bytes_left(gb) / 3);
    for (i = 0; i < pallen; i++)
        *dst++ = 0xFF000000 | bytestream2_get_be24u(gb);
    if (pallen < 256)
        memset(dst, 0, (256 - pallen) * sizeof(*dst));
}
