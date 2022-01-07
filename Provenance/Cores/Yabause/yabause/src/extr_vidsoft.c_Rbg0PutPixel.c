
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int linescreen; int (* PostPixelFetchCalc ) (TYPE_1__*,int ) ;int priority; } ;
typedef TYPE_1__ vdp2draw_struct ;
typedef int u32 ;


 int COLSAT2YAB32 (int ,int ) ;
 int GetAlpha (TYPE_1__*,int ,int ) ;
 int Rbg0PutHiresPixel (TYPE_1__*,int ,int ,int,int) ;
 int TitanPutPixel (int ,int,int,int ,int ,TYPE_1__*) ;
 int stub1 (TYPE_1__*,int ) ;
 scalar_t__ vdp2_x_hires ;

void Rbg0PutPixel(vdp2draw_struct *info, u32 color, u32 dot, int i, int j)
{
   if (vdp2_x_hires)
   {
      Rbg0PutHiresPixel(info, color, dot, i, j);
   }
   else
      TitanPutPixel(info->priority, i, j, info->PostPixelFetchCalc(info, COLSAT2YAB32(GetAlpha(info, color, dot), color)), info->linescreen, info);
}
