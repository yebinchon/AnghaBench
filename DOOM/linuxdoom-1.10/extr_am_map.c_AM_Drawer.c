
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AM_clearFB (int ) ;
 int AM_drawCrosshair (int ) ;
 int AM_drawGrid (int ) ;
 int AM_drawMarks () ;
 int AM_drawPlayers () ;
 int AM_drawThings (int ,int ) ;
 int AM_drawWalls () ;
 int BACKGROUND ;
 int GRIDCOLORS ;
 int THINGCOLORS ;
 int THINGRANGE ;
 int V_MarkRect (int ,int ,int ,int ) ;
 int XHAIRCOLORS ;
 int automapactive ;
 int cheating ;
 int f_h ;
 int f_w ;
 int f_x ;
 int f_y ;
 scalar_t__ grid ;

void AM_Drawer (void)
{
    if (!automapactive) return;

    AM_clearFB(BACKGROUND);
    if (grid)
 AM_drawGrid(GRIDCOLORS);
    AM_drawWalls();
    AM_drawPlayers();
    if (cheating==2)
 AM_drawThings(THINGCOLORS, THINGRANGE);
    AM_drawCrosshair(XHAIRCOLORS);

    AM_drawMarks();

    V_MarkRect(f_x, f_y, f_w, f_h);

}
