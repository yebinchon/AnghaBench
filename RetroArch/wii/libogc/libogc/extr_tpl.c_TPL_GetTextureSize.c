
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
__attribute__((used)) static u32 TPL_GetTextureSize(u32 width,u32 height,u32 fmt)
{
 u32 size = 0;

 switch(fmt) {
   case 134:
   case 137:
   case 135:
    size = ((width+7)>>3)*((height+7)>>3)*32;
    break;
   case 133:
   case 132:
   case 136:
    size = ((width+7)>>3)*((height+7)>>2)*32;
    break;
   case 131:
   case 138:
   case 130:
   case 129:
    size = ((width+3)>>2)*((height+3)>>2)*32;
    break;
   case 128:
    size = ((width+3)>>2)*((height+3)>>2)*32*2;
    break;
   default:
    break;
 }
 return size;
}
