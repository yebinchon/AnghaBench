
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int AVFrame ;


 int ulti_convert_yuv (int *,int,int,int*,int) ;

__attribute__((used)) static void ulti_pattern(AVFrame *frame, int x, int y,
                         int f0, int f1, int Y0, int Y1, int chroma)
{
    uint8_t Luma[16];
    int mask, i;
    for(mask = 0x80, i = 0; mask; mask >>= 1, i++) {
        if(f0 & mask)
            Luma[i] = Y1;
        else
            Luma[i] = Y0;
    }

    for(mask = 0x80, i = 8; mask; mask >>= 1, i++) {
        if(f1 & mask)
            Luma[i] = Y1;
        else
            Luma[i] = Y0;
    }

    ulti_convert_yuv(frame, x, y, Luma, chroma);
}
