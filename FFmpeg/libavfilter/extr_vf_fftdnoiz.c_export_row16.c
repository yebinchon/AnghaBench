
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
struct TYPE_3__ {float re; } ;
typedef TYPE_1__ FFTComplex ;


 int av_clip_uintp2_c (float,int) ;

__attribute__((used)) static void export_row16(FFTComplex *src, uint8_t *dstp, int rw, float scale, int depth)
{
    uint16_t *dst = (uint16_t *)dstp;
    int j;

    for (j = 0; j < rw; j++)
        dst[j] = av_clip_uintp2_c(src[j].re * scale + 0.5f, depth);
}
