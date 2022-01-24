#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int gamestate_t ;
typedef  int boolean ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
#define  GS_DEMOSCREEN 131 
#define  GS_FINALE 130 
#define  GS_INTERMISSION 129 
#define  GS_LEVEL 128 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  PU_CACHE ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SCREENHEIGHT ; 
 int /*<<< orphan*/  SCREENWIDTH ; 
 int /*<<< orphan*/  FUNC15 (int,int) ; 
 int /*<<< orphan*/  FUNC16 (scalar_t__,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ automapactive ; 
 size_t displayplayer ; 
 int gamestate ; 
 scalar_t__ gametic ; 
 int inhelpscreens ; 
 int menuactive ; 
 scalar_t__ nodrawers ; 
 scalar_t__ paused ; 
 int /*<<< orphan*/ * players ; 
 int scaledviewwidth ; 
 scalar_t__ setsizeneeded ; 
 int viewactive ; 
 int viewheight ; 
 scalar_t__ viewwindowx ; 
 int viewwindowy ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  wipe_Melt ; 
 int FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int wipegamestate ; 

void FUNC22 (void)
{
    static  boolean		viewactivestate = false;
    static  boolean		menuactivestate = false;
    static  boolean		inhelpscreensstate = false;
    static  boolean		fullscreen = false;
    static  gamestate_t		oldgamestate = -1;
    static  int			borderdrawcount;
    int				nowtime;
    int				tics;
    int				wipestart;
    int				y;
    boolean			done;
    boolean			wipe;
    boolean			redrawsbar;

    if (nodrawers)
	return;                    // for comparative timing / profiling
		
    redrawsbar = false;
    
    // change the view size if needed
    if (setsizeneeded)
    {
	FUNC12 ();
	oldgamestate = -1;                      // force background redraw
	borderdrawcount = 3;
    }

    // save the current screen if about to wipe
    if (gamestate != wipegamestate)
    {
	wipe = true;
	FUNC21(0, 0, SCREENWIDTH, SCREENHEIGHT);
    }
    else
	wipe = false;

    if (gamestate == GS_LEVEL && gametic)
	FUNC4();
    
    // do buffered drawing
    switch (gamestate)
    {
      case GS_LEVEL:
	if (!gametic)
	    break;
	if (automapactive)
	    FUNC0 ();
	if (wipe || (viewheight != 200 && fullscreen) )
	    redrawsbar = true;
	if (inhelpscreensstate && !inhelpscreens)
	    redrawsbar = true;              // just put away the help screen
	FUNC15 (viewheight == 200, redrawsbar );
	fullscreen = viewheight == 200;
	break;

      case GS_INTERMISSION:
	FUNC17 ();
	break;

      case GS_FINALE:
	FUNC2 ();
	break;

      case GS_DEMOSCREEN:
	FUNC1 ();
	break;
    }
    
    // draw buffered stuff to screen
    FUNC8 ();
    
    // draw the view directly
    if (gamestate == GS_LEVEL && !automapactive && gametic)
	FUNC14 (&players[displayplayer]);

    if (gamestate == GS_LEVEL && gametic)
	FUNC3 ();
    
    // clean up border stuff
    if (gamestate != oldgamestate && gamestate != GS_LEVEL)
	FUNC7 (FUNC18 ("PLAYPAL",PU_CACHE));

    // see if the border needs to be initially drawn
    if (gamestate == GS_LEVEL && oldgamestate != GS_LEVEL)
    {
	viewactivestate = false;        // view was not active
	FUNC13 ();    // draw the pattern into the back screen
    }

    // see if the border needs to be updated to the screen
    if (gamestate == GS_LEVEL && !automapactive && scaledviewwidth != 320)
    {
	if (menuactive || menuactivestate || !viewactivestate)
	    borderdrawcount = 3;
	if (borderdrawcount)
	{
	    FUNC11 ();    // erase old menu stuff
	    borderdrawcount--;
	}

    }

    menuactivestate = menuactive;
    viewactivestate = viewactive;
    inhelpscreensstate = inhelpscreens;
    oldgamestate = wipegamestate = gamestate;
    
    // draw pause pic
    if (paused)
    {
	if (automapactive)
	    y = 4;
	else
	    y = viewwindowy+4;
	FUNC16(viewwindowx+(scaledviewwidth-68)/2,
			  y,0,FUNC18 ("M_PAUSE", PU_CACHE));
    }


    // menus go directly to the screen
    FUNC9 ();          // menu is drawn even on top of everything
    FUNC10 ();         // send out any new accumulation


    // normal update
    if (!wipe)
    {
	FUNC5 ();              // page flip or blit buffer
	return;
    }
    
    // wipe update
    FUNC19(0, 0, SCREENWIDTH, SCREENHEIGHT);

    wipestart = FUNC6 () - 1;

    do
    {
	do
	{
	    nowtime = FUNC6 ();
	    tics = nowtime - wipestart;
	} while (!tics);
	wipestart = nowtime;
	done = FUNC20(wipe_Melt
			       , 0, 0, SCREENWIDTH, SCREENHEIGHT, tics);
	FUNC8 ();
	FUNC9 ();                            // menu is drawn even on top of wipes
	FUNC5 ();                      // page flip or blit buffer
    } while (!done);
}