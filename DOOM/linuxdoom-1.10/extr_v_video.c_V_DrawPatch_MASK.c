#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/ * columnofs; int /*<<< orphan*/  width; int /*<<< orphan*/  height; int /*<<< orphan*/  leftoffset; int /*<<< orphan*/  topoffset; } ;
typedef  TYPE_1__ patch_t ;
struct TYPE_5__ {int topdelta; int length; } ;
typedef  TYPE_2__ column_t ;
typedef  int /*<<< orphan*/  byte ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int SCREENHEIGHT ; 
 int SCREENWIDTH ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/ ** screens ; 
 int /*<<< orphan*/  stderr ; 

void
FUNC4
( int		x,
  int		y,
  int		scrn,
  patch_t*	patch ) 
{ 

    int		count;
    int		col; 
    column_t*	column; 
    byte*	desttop;
    byte*	dest;
    byte*	source; 
    int		w; 
	 
    y -= FUNC1(patch->topoffset); 
    x -= FUNC1(patch->leftoffset); 
#ifdef RANGECHECK 
    if (x<0
	||x+SHORT(patch->width) >SCREENWIDTH
	|| y<0
	|| y+SHORT(patch->height)>SCREENHEIGHT 
	|| (unsigned)scrn>4)
    {
      fprintf( stderr, "Patch at %d,%d exceeds LFB\n", x,y );
      // No I_Error abort - what is up with TNT.WAD?
      fprintf( stderr, "V_DrawPatch: bad patch (ignored)\n");
      return;
    }
#endif 
 
    if (!scrn)
	FUNC2 (x, y, FUNC1(patch->width), FUNC1(patch->height)); 

    col = 0; 
    desttop = screens[scrn]+y*SCREENWIDTH+x; 
	 
    w = FUNC1(patch->width); 

    for ( ; col<w ; x++, col++, desttop++)
    { 
	column = (column_t *)((byte *)patch + FUNC0(patch->columnofs[col])); 
 
	// step through the posts in a column 
	while (column->topdelta != 0xff ) 
	{ 
	    source = (byte *)column + 3; 
	    dest = desttop + column->topdelta*SCREENWIDTH; 
	    count = column->length; 
			 
	    while (count--) 
	    { 
		*dest = *source++; 
		dest += SCREENWIDTH; 
	    } 
	    column = (column_t *)(  (byte *)column + column->length 
				    + 4 ); 
	} 
    }			 
}