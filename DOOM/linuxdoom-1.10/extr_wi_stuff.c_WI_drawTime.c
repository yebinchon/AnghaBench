
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int width; } ;


 int FB ;
 int SHORT (int ) ;
 int V_DrawPatch (int,int,int ,TYPE_1__*) ;
 int WI_drawNum (int,int,int,int) ;
 TYPE_1__* colon ;
 TYPE_1__* sucks ;

void
WI_drawTime
( int x,
  int y,
  int t )
{

    int div;
    int n;

    if (t<0)
 return;

    if (t <= 61*59)
    {
 div = 1;

 do
 {
     n = (t / div) % 60;
     x = WI_drawNum(x, y, n, 2) - SHORT(colon->width);
     div *= 60;


     if (div==60 || t / div)
  V_DrawPatch(x, y, FB, colon);

 } while (t / div);
    }
    else
    {

 V_DrawPatch(x - SHORT(sucks->width), y, FB, sucks);
    }
}
