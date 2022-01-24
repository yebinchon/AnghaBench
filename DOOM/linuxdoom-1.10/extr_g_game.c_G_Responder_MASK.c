#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int type; char data1; int data2; int data3; } ;
typedef  TYPE_1__ event_t ;
typedef  int boolean ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 scalar_t__ GS_DEMOSCREEN ; 
 scalar_t__ GS_FINALE ; 
 scalar_t__ GS_LEVEL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 char KEY_F12 ; 
 char KEY_PAUSE ; 
 size_t MAXPLAYERS ; 
 int /*<<< orphan*/  FUNC4 () ; 
 char NUMKEYS ; 
 scalar_t__ FUNC5 (TYPE_1__*) ; 
 size_t consoleplayer ; 
 int /*<<< orphan*/  deathmatch ; 
 scalar_t__ demoplayback ; 
 scalar_t__ devparm ; 
 size_t displayplayer ; 
#define  ev_joystick 131 
#define  ev_keydown 130 
#define  ev_keyup 129 
#define  ev_mouse 128 
 scalar_t__ ga_nothing ; 
 scalar_t__ gameaction ; 
 int* gamekeydown ; 
 scalar_t__ gamestate ; 
 int* joybuttons ; 
 int joyxmove ; 
 int joyymove ; 
 int /*<<< orphan*/  mouseSensitivity ; 
 int* mousebuttons ; 
 int mousex ; 
 int mousey ; 
 int /*<<< orphan*/ * playeringame ; 
 int sendpause ; 
 scalar_t__ singledemo ; 

boolean FUNC6 (event_t* ev) 
{ 
    // allow spy mode changes even during the demo
    if (gamestate == GS_LEVEL && ev->type == ev_keydown 
	&& ev->data1 == KEY_F12 && (singledemo || !deathmatch) )
    {
	// spy mode 
	do 
	{ 
	    displayplayer++; 
	    if (displayplayer == MAXPLAYERS) 
		displayplayer = 0; 
	} while (!playeringame[displayplayer] && displayplayer != consoleplayer); 
	return true; 
    }
    
    // any other key pops up menu if in demos
    if (gameaction == ga_nothing && !singledemo && 
	(demoplayback || gamestate == GS_DEMOSCREEN) 
	) 
    { 
	if (ev->type == ev_keydown ||  
	    (ev->type == ev_mouse && ev->data1) || 
	    (ev->type == ev_joystick && ev->data1) ) 
	{ 
	    FUNC4 (); 
	    return true; 
	} 
	return false; 
    } 
 
    if (gamestate == GS_LEVEL) 
    { 
#if 0 
	if (devparm && ev->type == ev_keydown && ev->data1 == ';') 
	{ 
	    G_DeathMatchSpawnPlayer (0); 
	    return true; 
	} 
#endif 
	if (FUNC3 (ev)) 
	    return true;	// chat ate the event 
	if (FUNC5 (ev)) 
	    return true;	// status window ate it 
	if (FUNC0 (ev)) 
	    return true;	// automap ate it 
    } 
	 
    if (gamestate == GS_FINALE) 
    { 
	if (FUNC1 (ev)) 
	    return true;	// finale ate the event 
    } 
	 
    switch (ev->type) 
    { 
      case ev_keydown: 
	if (ev->data1 == KEY_PAUSE) 
	{ 
	    sendpause = true; 
	    return true; 
	} 
	if (ev->data1 <NUMKEYS) 
	    gamekeydown[ev->data1] = true; 
	return true;    // eat key down events 
 
      case ev_keyup: 
	if (ev->data1 <NUMKEYS) 
	    gamekeydown[ev->data1] = false; 
	return false;   // always let key up events filter down 
		 
      case ev_mouse: 
	mousebuttons[0] = ev->data1 & 1; 
	mousebuttons[1] = ev->data1 & 2; 
	mousebuttons[2] = ev->data1 & 4; 
	mousex = ev->data2*(mouseSensitivity+5)/10; 
	mousey = ev->data3*(mouseSensitivity+5)/10; 
	return true;    // eat events 
 
      case ev_joystick: 
	joybuttons[0] = ev->data1 & 1; 
	joybuttons[1] = ev->data1 & 2; 
	joybuttons[2] = ev->data1 & 4; 
	joybuttons[3] = ev->data1 & 8; 
	joyxmove = ev->data2; 
	joyymove = ev->data3; 
	return true;    // eat events 
 
      default: 
	break; 
    } 
 
    return false; 
}