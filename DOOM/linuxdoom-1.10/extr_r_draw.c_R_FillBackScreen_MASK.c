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
typedef  int /*<<< orphan*/  patch_t ;
typedef  int /*<<< orphan*/  byte ;

/* Variables and functions */
 int /*<<< orphan*/  PU_CACHE ; 
 int SBARHEIGHT ; 
 int SCREENHEIGHT ; 
 int SCREENWIDTH ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ commercial ; 
 scalar_t__ gamemode ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int scaledviewwidth ; 
 int /*<<< orphan*/ ** screens ; 
 int viewheight ; 
 scalar_t__ viewwindowx ; 
 scalar_t__ viewwindowy ; 

void FUNC3 (void) 
{ 
    byte*	src;
    byte*	dest; 
    int		x;
    int		y; 
    patch_t*	patch;

    // DOOM border patch.
    char	name1[] = "FLOOR7_2";

    // DOOM II border patch.
    char	name2[] = "GRNROCK";	

    char*	name;
	
    if (scaledviewwidth == 320)
	return;
	
    if ( gamemode == commercial)
	name = name2;
    else
	name = name1;
    
    src = FUNC1 (name, PU_CACHE); 
    dest = screens[1]; 
	 
    for (y=0 ; y<SCREENHEIGHT-SBARHEIGHT ; y++) 
    { 
	for (x=0 ; x<SCREENWIDTH/64 ; x++) 
	{ 
	    FUNC2 (dest, src+((y&63)<<6), 64); 
	    dest += 64; 
	} 

	if (SCREENWIDTH&63) 
	{ 
	    FUNC2 (dest, src+((y&63)<<6), SCREENWIDTH&63); 
	    dest += (SCREENWIDTH&63); 
	} 
    } 
	
    patch = FUNC1 ("brdr_t",PU_CACHE);

    for (x=0 ; x<scaledviewwidth ; x+=8)
	FUNC0 (viewwindowx+x,viewwindowy-8,1,patch);
    patch = FUNC1 ("brdr_b",PU_CACHE);

    for (x=0 ; x<scaledviewwidth ; x+=8)
	FUNC0 (viewwindowx+x,viewwindowy+viewheight,1,patch);
    patch = FUNC1 ("brdr_l",PU_CACHE);

    for (y=0 ; y<viewheight ; y+=8)
	FUNC0 (viewwindowx-8,viewwindowy+y,1,patch);
    patch = FUNC1 ("brdr_r",PU_CACHE);

    for (y=0 ; y<viewheight ; y+=8)
	FUNC0 (viewwindowx+scaledviewwidth,viewwindowy+y,1,patch);


    // Draw beveled edge. 
    FUNC0 (viewwindowx-8,
		 viewwindowy-8,
		 1,
		 FUNC1 ("brdr_tl",PU_CACHE));
    
    FUNC0 (viewwindowx+scaledviewwidth,
		 viewwindowy-8,
		 1,
		 FUNC1 ("brdr_tr",PU_CACHE));
    
    FUNC0 (viewwindowx-8,
		 viewwindowy+viewheight,
		 1,
		 FUNC1 ("brdr_bl",PU_CACHE));
    
    FUNC0 (viewwindowx+scaledviewwidth,
		 viewwindowy+viewheight,
		 1,
		 FUNC1 ("brdr_br",PU_CACHE));
}