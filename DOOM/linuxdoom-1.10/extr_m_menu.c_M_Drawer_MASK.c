#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {short x; short y; short numitems; TYPE_1__* menuitems; int /*<<< orphan*/  (* routine ) () ;} ;
struct TYPE_5__ {int /*<<< orphan*/  height; } ;
struct TYPE_4__ {scalar_t__* name; } ;

/* Variables and functions */
 short LINEHEIGHT ; 
 int FUNC0 (char*) ; 
 int FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (short,short,char*) ; 
 int /*<<< orphan*/  PU_CACHE ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 short SKULLXOFF ; 
 int /*<<< orphan*/  FUNC4 (short,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__*,int /*<<< orphan*/ ) ; 
 TYPE_3__* currentMenu ; 
 TYPE_2__** hu_font ; 
 int inhelpscreens ; 
 short itemOn ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  menuactive ; 
 char* messageString ; 
 scalar_t__ messageToPrint ; 
 scalar_t__** skullName ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 
 short FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*,short) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 size_t whichSkull ; 

void FUNC11 (void)
{
    static short	x;
    static short	y;
    short		i;
    short		max;
    char		string[40];
    int			start;

    inhelpscreens = false;

    
    // Horiz. & Vertically center string and print it.
    if (messageToPrint)
    {
	start = 0;
	y = 100 - FUNC0(messageString)/2;
	while(*(messageString+start))
	{
	    for (i = 0;i < FUNC8(messageString+start);i++)
		if (*(messageString+start+i) == '\n')
		{
		    FUNC6(string,0,40);
		    FUNC9(string,messageString+start,i);
		    start += i+1;
		    break;
		}
				
	    if (i == FUNC8(messageString+start))
	    {
		FUNC7(string,messageString+start);
		start += i;
	    }
				
	    x = 160 - FUNC1(string)/2;
	    FUNC2(x,y,string);
	    y += FUNC3(hu_font[0]->height);
	}
	return;
    }

    if (!menuactive)
	return;

    if (currentMenu->routine)
	currentMenu->routine();         // call Draw routine
    
    // DRAW MENU
    x = currentMenu->x;
    y = currentMenu->y;
    max = currentMenu->numitems;

    for (i=0;i<max;i++)
    {
	if (currentMenu->menuitems[i].name[0])
	    FUNC4 (x,y,0,
			       FUNC5(currentMenu->menuitems[i].name ,PU_CACHE));
	y += LINEHEIGHT;
    }

    
    // DRAW SKULL
    FUNC4(x + SKULLXOFF,currentMenu->y - 5 + itemOn*LINEHEIGHT, 0,
		      FUNC5(skullName[whichSkull],PU_CACHE));

}