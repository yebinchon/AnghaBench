
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
typedef int int32_t ;


 int av_clip (int const,int ,int) ;

__attribute__((used)) static void filter16_scale(uint8_t *out_pixel8, const int32_t *work_pixel, int linesize, int max)
{
    uint16_t *out_pixel = (uint16_t *)out_pixel8;
    int j;

    linesize /= 2;
    for (j = 0; j < linesize; j++, out_pixel++, work_pixel++)
        *out_pixel = av_clip(*work_pixel, 0, max) >> 15;
}
