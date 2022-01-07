
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int16_t ;



void ff_h264_chroma_dc_dequant_idct_8_mmi(int16_t *block, int qmul)
{
    int a,b,c,d;

    d = block[0] - block[16];
    a = block[0] + block[16];
    b = block[32] - block[48];
    c = block[32] + block[48];
    block[0] = ((a+c)*qmul) >> 7;
    block[16]= ((d+b)*qmul) >> 7;
    block[32]= ((a-c)*qmul) >> 7;
    block[48]= ((d-b)*qmul) >> 7;
}
