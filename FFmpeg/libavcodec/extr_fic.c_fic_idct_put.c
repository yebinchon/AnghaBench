
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int int16_t ;


 int av_clip_uint8 (int ) ;
 int fic_idct (int *,int,int,int) ;

__attribute__((used)) static void fic_idct_put(uint8_t *dst, int stride, int16_t *block)
{
    int i, j;
    int16_t *ptr;

    ptr = block;
    fic_idct(ptr++, 8, 13, (1 << 12) + (1 << 17));
    for (i = 1; i < 8; i++) {
        fic_idct(ptr, 8, 13, 1 << 12);
        ptr++;
    }

    ptr = block;
    for (i = 0; i < 8; i++) {
        fic_idct(ptr, 1, 20, 0);
        ptr += 8;
    }

    ptr = block;
    for (j = 0; j < 8; j++) {
        for (i = 0; i < 8; i++)
            dst[i] = av_clip_uint8(ptr[i]);
        dst += stride;
        ptr += 8;
    }
}
