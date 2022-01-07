
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
typedef int int16_t ;
struct TYPE_3__ {scalar_t__ dstFormat; } ;
typedef TYPE_1__ SwsContext ;


 scalar_t__ AV_PIX_FMT_P010BE ;
 int output_pixel (int *,int) ;

__attribute__((used)) static void yuv2p010cX_c(SwsContext *c, const int16_t *chrFilter, int chrFilterSize,
                         const int16_t **chrUSrc, const int16_t **chrVSrc,
                         uint8_t *dest8, int chrDstW)
{
    uint16_t *dest = (uint16_t*)dest8;
    int shift = 17;
    int big_endian = c->dstFormat == AV_PIX_FMT_P010BE;
    int i, j;

    for (i = 0; i < chrDstW; i++) {
        int u = 1 << (shift - 1);
        int v = 1 << (shift - 1);

        for (j = 0; j < chrFilterSize; j++) {
            u += chrUSrc[j][i] * chrFilter[j];
            v += chrVSrc[j][i] * chrFilter[j];
        }

        output_pixel(&dest[2*i] , u);
        output_pixel(&dest[2*i+1], v);
    }
}
