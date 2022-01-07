
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int linescreen; int priority; int (* PostPixelFetchCalc ) (TYPE_1__*,int ) ;} ;
typedef TYPE_1__ vdp2draw_struct ;
typedef int u32 ;


 int COLSAT2YAB32 (int ,int ) ;
 int GetAlpha (TYPE_1__*,int ,int ) ;
 int TitanPutPixel (int ,int,int,int ,int ,TYPE_1__*) ;
 int stub1 (TYPE_1__*,int ) ;

void Rbg0PutHiresPixel(vdp2draw_struct *info, u32 color, u32 dot, int i, int j)
{
   u32 pixel = info->PostPixelFetchCalc(info, COLSAT2YAB32(GetAlpha(info, color, dot), color));
   int x_pos = i * 2;
   TitanPutPixel(info->priority, x_pos, j, pixel, info->linescreen, info);
   TitanPutPixel(info->priority, x_pos + 1, j, pixel, info->linescreen, info);
}
