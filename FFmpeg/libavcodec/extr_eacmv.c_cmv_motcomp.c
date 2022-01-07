
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ptrdiff_t ;



__attribute__((used)) static void cmv_motcomp(unsigned char *dst, ptrdiff_t dst_stride,
                        const unsigned char *src, ptrdiff_t src_stride,
                        int x, int y,
                        int xoffset, int yoffset,
                        int width, int height){
    int i,j;

    for(j=y;j<y+4;j++)
    for(i=x;i<x+4;i++)
    {
        if (i+xoffset>=0 && i+xoffset<width &&
            j+yoffset>=0 && j+yoffset<height) {
            dst[j*dst_stride + i] = src[(j+yoffset)*src_stride + i+xoffset];
        }else{
            dst[j*dst_stride + i] = 0;
        }
    }
}
