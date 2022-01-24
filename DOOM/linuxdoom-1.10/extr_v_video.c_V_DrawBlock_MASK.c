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
typedef  int /*<<< orphan*/  byte ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int SCREENHEIGHT ; 
 int SCREENWIDTH ; 
 int /*<<< orphan*/  FUNC1 (int,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ ** screens ; 

void
FUNC3
( int		x,
  int		y,
  int		scrn,
  int		width,
  int		height,
  byte*		src ) 
{ 
    byte*	dest; 
	 
#ifdef RANGECHECK 
    if (x<0
	||x+width >SCREENWIDTH
	|| y<0
	|| y+height>SCREENHEIGHT 
	|| (unsigned)scrn>4 )
    {
	I_Error ("Bad V_DrawBlock");
    }
#endif 
 
    FUNC1 (x, y, width, height); 
 
    dest = screens[scrn] + y*SCREENWIDTH+x; 

    while (height--) 
    { 
	FUNC2 (dest, src, width); 
	src += width; 
	dest += SCREENWIDTH; 
    } 
}