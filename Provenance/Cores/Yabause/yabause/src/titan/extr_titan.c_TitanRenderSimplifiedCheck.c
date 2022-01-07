
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pixel_t ;


 int TitanRenderLines (int *,int,int) ;
 int TitanRenderLinesSimplified (int *,int,int) ;

void TitanRenderSimplifiedCheck(pixel_t * buf, int start, int end, int can_use_simplified_rendering)
{
   if (can_use_simplified_rendering)
      TitanRenderLinesSimplified(buf, start, end);
   else
      TitanRenderLines(buf, start, end);
}
