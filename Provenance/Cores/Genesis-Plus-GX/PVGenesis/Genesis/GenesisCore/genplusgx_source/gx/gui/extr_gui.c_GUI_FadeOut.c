
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GXColor ;


 scalar_t__ BLACK ;
 int gxDrawRectangle (int ,int ,int,int,int,int ) ;
 int gxSetScreen () ;

void GUI_FadeOut()
{
  int alpha = 0;
  while (alpha < 256)
  {
    gxDrawRectangle(0, 0, 640, 480, alpha, (GXColor)BLACK);
    gxSetScreen();
    alpha +=3;
  }
}
