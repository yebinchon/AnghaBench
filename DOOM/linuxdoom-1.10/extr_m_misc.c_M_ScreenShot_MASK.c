#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  byte ;
struct TYPE_2__ {char* message; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  PU_CACHE ; 
 int /*<<< orphan*/  SCREENHEIGHT ; 
 int /*<<< orphan*/  SCREENWIDTH ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (char*,int /*<<< orphan*/ ) ; 
 size_t consoleplayer ; 
 TYPE_1__* players ; 
 int /*<<< orphan*/ ** screens ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 

void FUNC6 (void)
{
    int		i;
    byte*	linear;
    char	lbmname[12];
    
    // munge planar buffer to linear
    linear = screens[2];
    FUNC1 (linear);
    
    // find a file name to save it to
    FUNC5(lbmname,"DOOM00.pcx");
		
    for (i=0 ; i<=99 ; i++)
    {
	lbmname[4] = i/10 + '0';
	lbmname[5] = i%10 + '0';
	if (FUNC4(lbmname,0) == -1)
	    break;	// file doesn't exist
    }
    if (i==100)
	FUNC0 ("M_ScreenShot: Couldn't create a PCX");
    
    // save the pcx file
    FUNC3 (lbmname, linear,
		  SCREENWIDTH, SCREENHEIGHT,
		  FUNC2 ("PLAYPAL",PU_CACHE));
	
    players[consoleplayer].message = "screen shot";
}