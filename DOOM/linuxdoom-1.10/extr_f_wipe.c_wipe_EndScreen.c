
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int I_ReadScreen (int ) ;
 int V_DrawBlock (int,int,int ,int,int,int ) ;
 int * screens ;
 int wipe_scr_end ;
 int wipe_scr_start ;

int
wipe_EndScreen
( int x,
  int y,
  int width,
  int height )
{
    wipe_scr_end = screens[3];
    I_ReadScreen(wipe_scr_end);
    V_DrawBlock(x, y, 0, width, height, wipe_scr_start);
    return 0;
}
