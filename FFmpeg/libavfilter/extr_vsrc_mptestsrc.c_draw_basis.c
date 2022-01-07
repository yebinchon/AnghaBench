
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int idct (int *,int,int*) ;
 int memset (int*,int ,int) ;

__attribute__((used)) static void draw_basis(uint8_t *dst, int dst_linesize, int amp, int freq, int dc)
{
    int src[64];

    memset(src, 0, 64*sizeof(int));
    src[0] = dc;
    if (amp)
        src[freq] = amp;
    idct(dst, dst_linesize, src);
}
