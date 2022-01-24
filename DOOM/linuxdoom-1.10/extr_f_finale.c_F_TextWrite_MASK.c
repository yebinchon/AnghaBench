#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  byte ;
struct TYPE_3__ {int /*<<< orphan*/  width; } ;

/* Variables and functions */
 int HU_FONTSIZE ; 
 int HU_FONTSTART ; 
 int /*<<< orphan*/  PU_CACHE ; 
 int SCREENHEIGHT ; 
 int SCREENWIDTH ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int TEXTSPEED ; 
 int /*<<< orphan*/  FUNC1 (int,int,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int finalecount ; 
 int /*<<< orphan*/  finaleflat ; 
 char* finaletext ; 
 TYPE_1__** hu_font ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ ** screens ; 
 int FUNC5 (int) ; 

void FUNC6 (void)
{
    byte*	src;
    byte*	dest;
    
    int		x,y,w;
    int		count;
    char*	ch;
    int		c;
    int		cx;
    int		cy;
    
    // erase the entire screen to a tiled background
    src = FUNC3 ( finaleflat , PU_CACHE);
    dest = screens[0];
	
    for (y=0 ; y<SCREENHEIGHT ; y++)
    {
	for (x=0 ; x<SCREENWIDTH/64 ; x++)
	{
	    FUNC4 (dest, src+((y&63)<<6), 64);
	    dest += 64;
	}
	if (SCREENWIDTH&63)
	{
	    FUNC4 (dest, src+((y&63)<<6), SCREENWIDTH&63);
	    dest += (SCREENWIDTH&63);
	}
    }

    FUNC2 (0, 0, SCREENWIDTH, SCREENHEIGHT);
    
    // draw some of the text onto the screen
    cx = 10;
    cy = 10;
    ch = finaletext;
	
    count = (finalecount - 10)/TEXTSPEED;
    if (count < 0)
	count = 0;
    for ( ; count ; count-- )
    {
	c = *ch++;
	if (!c)
	    break;
	if (c == '\n')
	{
	    cx = 10;
	    cy += 11;
	    continue;
	}
		
	c = FUNC5(c) - HU_FONTSTART;
	if (c < 0 || c> HU_FONTSIZE)
	{
	    cx += 4;
	    continue;
	}
		
	w = FUNC0 (hu_font[c]->width);
	if (cx+w > SCREENWIDTH)
	    break;
	FUNC1(cx, cy, 0, hu_font[c]);
	cx+=w;
    }
	
}