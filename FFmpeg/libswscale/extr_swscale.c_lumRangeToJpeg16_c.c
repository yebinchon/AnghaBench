
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32_t ;
typedef int int16_t ;


 unsigned int FFMIN (int,int) ;

__attribute__((used)) static void lumRangeToJpeg16_c(int16_t *_dst, int width)
{
    int i;
    int32_t *dst = (int32_t *) _dst;
    for (i = 0; i < width; i++) {
        dst[i] = ((int)(FFMIN(dst[i], 30189 << 4) * 4769U - (39057361 << 2))) >> 12;
    }
}
