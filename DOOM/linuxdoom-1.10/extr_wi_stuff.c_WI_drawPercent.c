
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FB ;
 int V_DrawPatch (int,int,int ,int ) ;
 int WI_drawNum (int,int,int,int) ;
 int percent ;

void
WI_drawPercent
( int x,
  int y,
  int p )
{
    if (p < 0)
 return;

    V_DrawPatch(x, y, FB, percent);
    WI_drawNum(x, y, p, -1);
}
