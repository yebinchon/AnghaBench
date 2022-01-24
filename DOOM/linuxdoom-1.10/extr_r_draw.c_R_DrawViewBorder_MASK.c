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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int SBARHEIGHT ; 
 int SCREENHEIGHT ; 
 int SCREENWIDTH ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int scaledviewwidth ; 
 int viewheight ; 

void FUNC2 (void) 
{ 
    int		top;
    int		side;
    int		ofs;
    int		i; 
 
    if (scaledviewwidth == SCREENWIDTH) 
	return; 
  
    top = ((SCREENHEIGHT-SBARHEIGHT)-viewheight)/2; 
    side = (SCREENWIDTH-scaledviewwidth)/2; 
 
    // copy top and one line of left side 
    FUNC0 (0, top*SCREENWIDTH+side); 
 
    // copy one line of right side and bottom 
    ofs = (viewheight+top)*SCREENWIDTH-side; 
    FUNC0 (ofs, top*SCREENWIDTH+side); 
 
    // copy sides using wraparound 
    ofs = top*SCREENWIDTH + SCREENWIDTH-side; 
    side <<= 1;
    
    for (i=1 ; i<viewheight ; i++) 
    { 
	FUNC0 (ofs, side); 
	ofs += SCREENWIDTH; 
    } 

    // ? 
    FUNC1 (0,0,SCREENWIDTH, SCREENHEIGHT-SBARHEIGHT); 
}