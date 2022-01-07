
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int av_clip_uint8 (int) ;

__attribute__((used)) static void rgba2ycocg(uint8_t *dst, const uint8_t *pixel)
{
    int r = pixel[0];
    int g = (pixel[1] + 1) >> 1;
    int b = pixel[2];
    int t = (2 + r + b) >> 2;

    dst[0] = av_clip_uint8(128 + ((r - b + 1) >> 1));
    dst[1] = av_clip_uint8(128 + g - t);
    dst[2] = 0;
    dst[3] = av_clip_uint8(g + t);
}
