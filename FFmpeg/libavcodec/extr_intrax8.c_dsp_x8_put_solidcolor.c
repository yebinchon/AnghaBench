
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int ptrdiff_t ;


 int memset (int *,int const,int) ;

__attribute__((used)) static void dsp_x8_put_solidcolor(const uint8_t pix, uint8_t *dst,
                                  const ptrdiff_t linesize)
{
    int k;
    for (k = 0; k < 8; k++) {
        memset(dst, pix, 8);
        dst += linesize;
    }
}
