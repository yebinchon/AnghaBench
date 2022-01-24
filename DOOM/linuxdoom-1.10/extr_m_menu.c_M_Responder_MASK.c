#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {scalar_t__ type; int data3; int data2; int data1; } ;
typedef  TYPE_2__ event_t ;
typedef  int boolean ;
struct TYPE_12__ {int numitems; size_t lastOn; TYPE_1__* menuitems; struct TYPE_12__* prevMenu; } ;
struct TYPE_11__ {int /*<<< orphan*/  message; } ;
struct TYPE_9__ {int status; int alphaKey; int /*<<< orphan*/  (* routine ) (size_t) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  HU_FONTSIZE ; 
 int /*<<< orphan*/  HU_FONTSTART ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
#define  KEY_BACKSPACE 147 
#define  KEY_DOWNARROW 146 
#define  KEY_ENTER 145 
#define  KEY_EQUALS 144 
#define  KEY_ESCAPE 143 
#define  KEY_F1 142 
#define  KEY_F10 141 
#define  KEY_F11 140 
#define  KEY_F2 139 
#define  KEY_F3 138 
#define  KEY_F4 137 
#define  KEY_F5 136 
#define  KEY_F6 135 
#define  KEY_F7 134 
#define  KEY_F8 133 
#define  KEY_F9 132 
#define  KEY_LEFTARROW 131 
#define  KEY_MINUS 130 
#define  KEY_RIGHTARROW 129 
#define  KEY_UPARROW 128 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (size_t) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int FUNC15 (int*) ; 
 int /*<<< orphan*/  PU_CACHE ; 
 TYPE_4__ ReadDef1 ; 
 TYPE_4__ ReadDef2 ; 
 int /*<<< orphan*/  SAVESTRINGSIZE ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_4__ SoundDef ; 
 int /*<<< orphan*/  FUNC17 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  automapactive ; 
 int /*<<< orphan*/  chat_on ; 
 size_t consoleplayer ; 
 TYPE_4__* currentMenu ; 
 scalar_t__ devparm ; 
 scalar_t__ ev_joystick ; 
 scalar_t__ ev_keydown ; 
 scalar_t__ ev_mouse ; 
 int /*<<< orphan*/  gamemode ; 
 int /*<<< orphan*/ * gammamsg ; 
 size_t itemOn ; 
 int menuactive ; 
 int messageLastMenuActive ; 
 int messageNeedsInput ; 
 int /*<<< orphan*/  FUNC18 (int) ; 
 scalar_t__ messageToPrint ; 
 TYPE_3__* players ; 
 int /*<<< orphan*/  retail ; 
 size_t saveCharIndex ; 
 int /*<<< orphan*/  saveOldString ; 
 size_t saveSlot ; 
 scalar_t__ saveStringEnter ; 
 int** savegamestrings ; 
 int /*<<< orphan*/  sfx_pistol ; 
 int /*<<< orphan*/  sfx_pstop ; 
 int /*<<< orphan*/  sfx_stnmov ; 
 int /*<<< orphan*/  sfx_swtchn ; 
 int /*<<< orphan*/  sfx_swtchx ; 
 size_t sfx_vol ; 
 int /*<<< orphan*/  FUNC19 (int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int) ; 
 int /*<<< orphan*/  FUNC21 (int) ; 
 int /*<<< orphan*/  FUNC22 (int) ; 
 int /*<<< orphan*/  FUNC23 (size_t) ; 
 int FUNC24 (int) ; 
 int usegamma ; 

boolean FUNC25 (event_t* ev)
{
    int             ch;
    int             i;
    static  int     joywait = 0;
    static  int     mousewait = 0;
    static  int     mousey = 0;
    static  int     lasty = 0;
    static  int     mousex = 0;
    static  int     lastx = 0;
	
    ch = -1;
	
    if (ev->type == ev_joystick && joywait < FUNC1())
    {
	if (ev->data3 == -1)
	{
	    ch = KEY_UPARROW;
	    joywait = FUNC1() + 5;
	}
	else if (ev->data3 == 1)
	{
	    ch = KEY_DOWNARROW;
	    joywait = FUNC1() + 5;
	}
		
	if (ev->data2 == -1)
	{
	    ch = KEY_LEFTARROW;
	    joywait = FUNC1() + 2;
	}
	else if (ev->data2 == 1)
	{
	    ch = KEY_RIGHTARROW;
	    joywait = FUNC1() + 2;
	}
		
	if (ev->data1&1)
	{
	    ch = KEY_ENTER;
	    joywait = FUNC1() + 5;
	}
	if (ev->data1&2)
	{
	    ch = KEY_BACKSPACE;
	    joywait = FUNC1() + 5;
	}
    }
    else
    {
	if (ev->type == ev_mouse && mousewait < FUNC1())
	{
	    mousey += ev->data3;
	    if (mousey < lasty-30)
	    {
		ch = KEY_DOWNARROW;
		mousewait = FUNC1() + 5;
		mousey = lasty -= 30;
	    }
	    else if (mousey > lasty+30)
	    {
		ch = KEY_UPARROW;
		mousewait = FUNC1() + 5;
		mousey = lasty += 30;
	    }
		
	    mousex += ev->data2;
	    if (mousex < lastx-30)
	    {
		ch = KEY_LEFTARROW;
		mousewait = FUNC1() + 5;
		mousex = lastx -= 30;
	    }
	    else if (mousex > lastx+30)
	    {
		ch = KEY_RIGHTARROW;
		mousewait = FUNC1() + 5;
		mousex = lastx += 30;
	    }
		
	    if (ev->data1&1)
	    {
		ch = KEY_ENTER;
		mousewait = FUNC1() + 15;
	    }
			
	    if (ev->data1&2)
	    {
		ch = KEY_BACKSPACE;
		mousewait = FUNC1() + 15;
	    }
	}
	else
	    if (ev->type == ev_keydown)
	    {
		ch = ev->data1;
	    }
    }
    
    if (ch == -1)
	return false;

    
    // Save Game string input
    if (saveStringEnter)
    {
	switch(ch)
	{
	  case KEY_BACKSPACE:
	    if (saveCharIndex > 0)
	    {
		saveCharIndex--;
		savegamestrings[saveSlot][saveCharIndex] = 0;
	    }
	    break;
				
	  case KEY_ESCAPE:
	    saveStringEnter = 0;
	    FUNC19(&savegamestrings[saveSlot][0],saveOldString);
	    break;
				
	  case KEY_ENTER:
	    saveStringEnter = 0;
	    if (savegamestrings[saveSlot][0])
		FUNC6(saveSlot);
	    break;
				
	  default:
	    ch = FUNC24(ch);
	    if (ch != 32)
		if (ch-HU_FONTSTART < 0 || ch-HU_FONTSTART >= HU_FONTSIZE)
		    break;
	    if (ch >= 32 && ch <= 127 &&
		saveCharIndex < SAVESTRINGSIZE-1 &&
		FUNC15(savegamestrings[saveSlot]) <
		(SAVESTRINGSIZE-2)*8)
	    {
		savegamestrings[saveSlot][saveCharIndex++] = ch;
		savegamestrings[saveSlot][saveCharIndex] = 0;
	    }
	    break;
	}
	return true;
    }
    
    // Take care of any messages that need input
    if (messageToPrint)
    {
	if (messageNeedsInput == true &&
	    !(ch == ' ' || ch == 'n' || ch == 'y' || ch == KEY_ESCAPE))
	    return false;
		
	menuactive = messageLastMenuActive;
	messageToPrint = 0;
	if (&messageRoutine)
	    FUNC18(ch);
			
	menuactive = false;
	FUNC16(NULL,sfx_swtchx);
	return true;
    }
	
    if (devparm && ch == KEY_F1)
    {
	FUNC0 ();
	return true;
    }
		
    
    // F-Keys
    if (!menuactive)
	switch(ch)
	{
	  case KEY_MINUS:         // Screen size down
	    if (automapactive || chat_on)
		return false;
	    FUNC13(0);
	    FUNC16(NULL,sfx_stnmov);
	    return true;
				
	  case KEY_EQUALS:        // Screen size up
	    if (automapactive || chat_on)
		return false;
	    FUNC13(1);
	    FUNC16(NULL,sfx_stnmov);
	    return true;
				
	  case KEY_F1:            // Help key
	    FUNC14 ();

	    if ( gamemode == retail )
	      currentMenu = &ReadDef2;
	    else
	      currentMenu = &ReadDef1;
	    
	    itemOn = 0;
	    FUNC16(NULL,sfx_swtchn);
	    return true;
				
	  case KEY_F2:            // Save
	    FUNC14();
	    FUNC16(NULL,sfx_swtchn);
	    FUNC12(0);
	    return true;
				
	  case KEY_F3:            // Load
	    FUNC14();
	    FUNC16(NULL,sfx_swtchn);
	    FUNC8(0);
	    return true;
				
	  case KEY_F4:            // Sound Volume
	    FUNC14 ();
	    currentMenu = &SoundDef;
	    itemOn = sfx_vol;
	    FUNC16(NULL,sfx_swtchn);
	    return true;
				
	  case KEY_F5:            // Detail toggle
	    FUNC3(0);
	    FUNC16(NULL,sfx_swtchn);
	    return true;
				
	  case KEY_F6:            // Quicksave
	    FUNC16(NULL,sfx_swtchn);
	    FUNC10();
	    return true;
				
	  case KEY_F7:            // End game
	    FUNC16(NULL,sfx_swtchn);
	    FUNC7(0);
	    return true;
				
	  case KEY_F8:            // Toggle messages
	    FUNC4(0);
	    FUNC16(NULL,sfx_swtchn);
	    return true;
				
	  case KEY_F9:            // Quickload
	    FUNC16(NULL,sfx_swtchn);
	    FUNC9();
	    return true;
				
	  case KEY_F10:           // Quit DOOM
	    FUNC16(NULL,sfx_swtchn);
	    FUNC11(0);
	    return true;
				
	  case KEY_F11:           // gamma toggle
	    usegamma++;
	    if (usegamma > 4)
		usegamma = 0;
	    players[consoleplayer].message = gammamsg[usegamma];
	    FUNC2 (FUNC17 ("PLAYPAL",PU_CACHE));
	    return true;
				
	}

    
    // Pop-up menu?
    if (!menuactive)
    {
	if (ch == KEY_ESCAPE)
	{
	    FUNC14 ();
	    FUNC16(NULL,sfx_swtchn);
	    return true;
	}
	return false;
    }

    
    // Keys usable within menu
    switch (ch)
    {
      case KEY_DOWNARROW:
	do
	{
	    if (itemOn+1 > currentMenu->numitems-1)
		itemOn = 0;
	    else itemOn++;
	    FUNC16(NULL,sfx_pstop);
	} while(currentMenu->menuitems[itemOn].status==-1);
	return true;
		
      case KEY_UPARROW:
	do
	{
	    if (!itemOn)
		itemOn = currentMenu->numitems-1;
	    else itemOn--;
	    FUNC16(NULL,sfx_pstop);
	} while(currentMenu->menuitems[itemOn].status==-1);
	return true;

      case KEY_LEFTARROW:
	if (currentMenu->menuitems[itemOn].routine &&
	    currentMenu->menuitems[itemOn].status == 2)
	{
	    FUNC16(NULL,sfx_stnmov);
	    currentMenu->menuitems[itemOn].routine(0);
	}
	return true;
		
      case KEY_RIGHTARROW:
	if (currentMenu->menuitems[itemOn].routine &&
	    currentMenu->menuitems[itemOn].status == 2)
	{
	    FUNC16(NULL,sfx_stnmov);
	    currentMenu->menuitems[itemOn].routine(1);
	}
	return true;

      case KEY_ENTER:
	if (currentMenu->menuitems[itemOn].routine &&
	    currentMenu->menuitems[itemOn].status)
	{
	    currentMenu->lastOn = itemOn;
	    if (currentMenu->menuitems[itemOn].status == 2)
	    {
		currentMenu->menuitems[itemOn].routine(1);      // right arrow
		FUNC16(NULL,sfx_stnmov);
	    }
	    else
	    {
		currentMenu->menuitems[itemOn].routine(itemOn);
		FUNC16(NULL,sfx_pistol);
	    }
	}
	return true;
		
      case KEY_ESCAPE:
	currentMenu->lastOn = itemOn;
	FUNC5 ();
	FUNC16(NULL,sfx_swtchx);
	return true;
		
      case KEY_BACKSPACE:
	currentMenu->lastOn = itemOn;
	if (currentMenu->prevMenu)
	{
	    currentMenu = currentMenu->prevMenu;
	    itemOn = currentMenu->lastOn;
	    FUNC16(NULL,sfx_swtchn);
	}
	return true;
	
      default:
	for (i = itemOn+1;i < currentMenu->numitems;i++)
	    if (currentMenu->menuitems[i].alphaKey == ch)
	    {
		itemOn = i;
		FUNC16(NULL,sfx_pstop);
		return true;
	    }
	for (i = 0;i <= itemOn;i++)
	    if (currentMenu->menuitems[i].alphaKey == ch)
	    {
		itemOn = i;
		FUNC16(NULL,sfx_pstop);
		return true;
	    }
	break;
	
    }

    return false;
}