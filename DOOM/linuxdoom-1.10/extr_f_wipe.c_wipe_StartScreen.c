
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int I_ReadScreen (int ) ;
 int * screens ;
 int wipe_scr_start ;

int
wipe_StartScreen
( int x,
  int y,
  int width,
  int height )
{
    wipe_scr_start = screens[2];
    I_ReadScreen(wipe_scr_start);
    return 0;
}
