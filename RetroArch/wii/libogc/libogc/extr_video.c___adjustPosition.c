
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
typedef int s16 ;
struct TYPE_2__ {int dispPosX; int dispSizeX; int adjustedDispPosX; scalar_t__ fbMode; int dispPosY; int adjustedDispPosY; int dispSizeY; int adjustedDispSizeY; scalar_t__ panSizeY; scalar_t__ adjustedPanSizeY; scalar_t__ panPosY; scalar_t__ adjustedPanPosY; } ;


 TYPE_1__ HorVer ;
 scalar_t__ VI_XFBMODE_SF ;
 int displayOffsetH ;
 int displayOffsetV ;

__attribute__((used)) static inline void __adjustPosition(u16 acv)
{
 u32 fact,field;
 s16 dispPosX,dispPosY;
 s16 dispSizeY,maxDispSizeY;

 dispPosX = (HorVer.dispPosX+displayOffsetH);
 if(dispPosX<=(720-HorVer.dispSizeX)) {
  if(dispPosX>=0) HorVer.adjustedDispPosX = dispPosX;
  else HorVer.adjustedDispPosX = 0;
 } else HorVer.adjustedDispPosX = (720-HorVer.dispSizeX);

 fact = 1;
 if(HorVer.fbMode==VI_XFBMODE_SF) fact = 2;

 field = HorVer.dispPosY&0x0001;
 dispPosY = HorVer.dispPosY+displayOffsetV;
 if(dispPosY>field) HorVer.adjustedDispPosY = dispPosY;
 else HorVer.adjustedDispPosY = field;

 dispSizeY = HorVer.dispPosY+HorVer.dispSizeY+displayOffsetV;
 maxDispSizeY = ((acv<<1)-field);
 if(dispSizeY>maxDispSizeY) dispSizeY -= (acv<<1)-field;
 else dispSizeY = 0;

 dispPosY = HorVer.dispPosY+displayOffsetV;
 if(dispPosY<field) dispPosY -= field;
 else dispPosY = 0;
 HorVer.adjustedDispSizeY = HorVer.dispSizeY+dispPosY-dispSizeY;

 dispPosY = HorVer.dispPosY+displayOffsetV;
 if(dispPosY<field) dispPosY -= field;
 else dispPosY = 0;
 HorVer.adjustedPanPosY = HorVer.panPosY-(dispPosY/fact);

 dispSizeY = HorVer.dispPosY+HorVer.dispSizeY+displayOffsetV;
 if(dispSizeY>maxDispSizeY) dispSizeY -= maxDispSizeY;
 else dispSizeY = 0;

 dispPosY = HorVer.dispPosY+displayOffsetV;
 if(dispPosY<field) dispPosY -= field;
 else dispPosY = 0;
 HorVer.adjustedPanSizeY = HorVer.panSizeY+(dispPosY/fact)-(dispSizeY/fact);
}
