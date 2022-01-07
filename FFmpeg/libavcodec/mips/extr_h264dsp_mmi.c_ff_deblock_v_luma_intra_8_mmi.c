
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int deblock_v8_luma_intra_8_mmi (int *,int,int,int) ;

void ff_deblock_v_luma_intra_8_mmi(uint8_t *pix, int stride, int alpha,
        int beta)
{
    deblock_v8_luma_intra_8_mmi(pix + 0, stride, alpha, beta);
    deblock_v8_luma_intra_8_mmi(pix + 8, stride, alpha, beta);
}
