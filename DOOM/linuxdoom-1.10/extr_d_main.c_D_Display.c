
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gamestate_t ;
typedef int boolean ;


 int AM_Drawer () ;
 int D_PageDrawer () ;
 int F_Drawer () ;




 int HU_Drawer () ;
 int HU_Erase () ;
 int I_FinishUpdate () ;
 int I_GetTime () ;
 int I_SetPalette (int ) ;
 int I_UpdateNoBlit () ;
 int M_Drawer () ;
 int NetUpdate () ;
 int PU_CACHE ;
 int R_DrawViewBorder () ;
 int R_ExecuteSetViewSize () ;
 int R_FillBackScreen () ;
 int R_RenderPlayerView (int *) ;
 int SCREENHEIGHT ;
 int SCREENWIDTH ;
 int ST_Drawer (int,int) ;
 int V_DrawPatchDirect (scalar_t__,int,int ,int ) ;
 int WI_Drawer () ;
 int W_CacheLumpName (char*,int ) ;
 scalar_t__ automapactive ;
 size_t displayplayer ;
 int gamestate ;
 scalar_t__ gametic ;
 int inhelpscreens ;
 int menuactive ;
 scalar_t__ nodrawers ;
 scalar_t__ paused ;
 int * players ;
 int scaledviewwidth ;
 scalar_t__ setsizeneeded ;
 int viewactive ;
 int viewheight ;
 scalar_t__ viewwindowx ;
 int viewwindowy ;
 int wipe_EndScreen (int ,int ,int ,int ) ;
 int wipe_Melt ;
 int wipe_ScreenWipe (int ,int ,int ,int ,int ,int) ;
 int wipe_StartScreen (int ,int ,int ,int ) ;
 int wipegamestate ;

void D_Display (void)
{
    static boolean viewactivestate = 0;
    static boolean menuactivestate = 0;
    static boolean inhelpscreensstate = 0;
    static boolean fullscreen = 0;
    static gamestate_t oldgamestate = -1;
    static int borderdrawcount;
    int nowtime;
    int tics;
    int wipestart;
    int y;
    boolean done;
    boolean wipe;
    boolean redrawsbar;

    if (nodrawers)
 return;

    redrawsbar = 0;


    if (setsizeneeded)
    {
 R_ExecuteSetViewSize ();
 oldgamestate = -1;
 borderdrawcount = 3;
    }


    if (gamestate != wipegamestate)
    {
 wipe = 1;
 wipe_StartScreen(0, 0, SCREENWIDTH, SCREENHEIGHT);
    }
    else
 wipe = 0;

    if (gamestate == 128 && gametic)
 HU_Erase();


    switch (gamestate)
    {
      case 128:
 if (!gametic)
     break;
 if (automapactive)
     AM_Drawer ();
 if (wipe || (viewheight != 200 && fullscreen) )
     redrawsbar = 1;
 if (inhelpscreensstate && !inhelpscreens)
     redrawsbar = 1;
 ST_Drawer (viewheight == 200, redrawsbar );
 fullscreen = viewheight == 200;
 break;

      case 129:
 WI_Drawer ();
 break;

      case 130:
 F_Drawer ();
 break;

      case 131:
 D_PageDrawer ();
 break;
    }


    I_UpdateNoBlit ();


    if (gamestate == 128 && !automapactive && gametic)
 R_RenderPlayerView (&players[displayplayer]);

    if (gamestate == 128 && gametic)
 HU_Drawer ();


    if (gamestate != oldgamestate && gamestate != 128)
 I_SetPalette (W_CacheLumpName ("PLAYPAL",PU_CACHE));


    if (gamestate == 128 && oldgamestate != 128)
    {
 viewactivestate = 0;
 R_FillBackScreen ();
    }


    if (gamestate == 128 && !automapactive && scaledviewwidth != 320)
    {
 if (menuactive || menuactivestate || !viewactivestate)
     borderdrawcount = 3;
 if (borderdrawcount)
 {
     R_DrawViewBorder ();
     borderdrawcount--;
 }

    }

    menuactivestate = menuactive;
    viewactivestate = viewactive;
    inhelpscreensstate = inhelpscreens;
    oldgamestate = wipegamestate = gamestate;


    if (paused)
    {
 if (automapactive)
     y = 4;
 else
     y = viewwindowy+4;
 V_DrawPatchDirect(viewwindowx+(scaledviewwidth-68)/2,
     y,0,W_CacheLumpName ("M_PAUSE", PU_CACHE));
    }



    M_Drawer ();
    NetUpdate ();



    if (!wipe)
    {
 I_FinishUpdate ();
 return;
    }


    wipe_EndScreen(0, 0, SCREENWIDTH, SCREENHEIGHT);

    wipestart = I_GetTime () - 1;

    do
    {
 do
 {
     nowtime = I_GetTime ();
     tics = nowtime - wipestart;
 } while (!tics);
 wipestart = nowtime;
 done = wipe_ScreenWipe(wipe_Melt
          , 0, 0, SCREENWIDTH, SCREENHEIGHT, tics);
 I_UpdateNoBlit ();
 M_Drawer ();
 I_FinishUpdate ();
    } while (!done);
}
