
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int COLOURS_PAL_GetYUV (double*) ;
 int YUV2RGB (int*,double*) ;

void COLOURS_PAL_Update(int colourtable[256])
{
 double yuv_table[256*5];
 COLOURS_PAL_GetYUV(yuv_table);
 YUV2RGB(colourtable, yuv_table);
}
