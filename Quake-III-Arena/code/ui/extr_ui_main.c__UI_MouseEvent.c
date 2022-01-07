
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ cursorx; scalar_t__ cursory; } ;
struct TYPE_4__ {TYPE_1__ uiDC; } ;


 int Display_MouseMove (int *,scalar_t__,scalar_t__) ;
 scalar_t__ Menu_Count () ;
 scalar_t__ SCREEN_HEIGHT ;
 scalar_t__ SCREEN_WIDTH ;
 TYPE_2__ uiInfo ;

void _UI_MouseEvent( int dx, int dy )
{

 uiInfo.uiDC.cursorx += dx;
 if (uiInfo.uiDC.cursorx < 0)
  uiInfo.uiDC.cursorx = 0;
 else if (uiInfo.uiDC.cursorx > SCREEN_WIDTH)
  uiInfo.uiDC.cursorx = SCREEN_WIDTH;

 uiInfo.uiDC.cursory += dy;
 if (uiInfo.uiDC.cursory < 0)
  uiInfo.uiDC.cursory = 0;
 else if (uiInfo.uiDC.cursory > SCREEN_HEIGHT)
  uiInfo.uiDC.cursory = SCREEN_HEIGHT;

  if (Menu_Count() > 0) {


  Display_MouseMove(((void*)0), uiInfo.uiDC.cursorx, uiInfo.uiDC.cursory);
  }

}
