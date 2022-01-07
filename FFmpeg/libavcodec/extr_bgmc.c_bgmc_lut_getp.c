
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 scalar_t__ LUT_BUFF ;
 unsigned int LUT_SIZE ;
 unsigned int av_clip (int,int ,scalar_t__) ;
 int bgmc_lut_fillp (int *,int*,int) ;

__attribute__((used)) static uint8_t *bgmc_lut_getp(uint8_t *lut, int *lut_status, int delta)
{
    unsigned int i = av_clip(delta, 0, LUT_BUFF - 1);

    lut += (i * LUT_SIZE) << 4;

    if (lut_status[i] != delta)
        bgmc_lut_fillp(lut, &lut_status[i], delta);

    return lut;
}
