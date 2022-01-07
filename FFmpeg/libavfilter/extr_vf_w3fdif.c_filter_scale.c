
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int int32_t ;


 int av_clip (int const,int ,int) ;

__attribute__((used)) static void filter_scale(uint8_t *out_pixel, const int32_t *work_pixel, int linesize, int max)
{
    int j;

    for (j = 0; j < linesize; j++, out_pixel++, work_pixel++)
        *out_pixel = av_clip(*work_pixel, 0, 255 * 256 * 128) >> 15;
}
