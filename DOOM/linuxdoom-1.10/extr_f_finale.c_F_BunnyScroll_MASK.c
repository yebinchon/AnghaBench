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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  PU_CACHE ; 
 int /*<<< orphan*/  PU_LEVEL ; 
 int SCREENHEIGHT ; 
 int SCREENWIDTH ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/ * FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int finalecount ; 
 int /*<<< orphan*/  sfx_pistol ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int) ; 

void FUNC6 (void)
{
    int		scrolled;
    int		x;
    patch_t*	p1;
    patch_t*	p2;
    char	name[10];
    int		stage;
    static int	laststage;
		
    p1 = FUNC4 ("PFUB2", PU_LEVEL);
    p2 = FUNC4 ("PFUB1", PU_LEVEL);

    FUNC3 (0, 0, SCREENWIDTH, SCREENHEIGHT);
	
    scrolled = 320 - (finalecount-230)/2;
    if (scrolled > 320)
	scrolled = 320;
    if (scrolled < 0)
	scrolled = 0;
		
    for ( x=0 ; x<SCREENWIDTH ; x++)
    {
	if (x+scrolled < 320)
	    FUNC0 (x, p1, x+scrolled);
	else
	    FUNC0 (x, p2, x+scrolled - 320);		
    }
	
    if (finalecount < 1130)
	return;
    if (finalecount < 1180)
    {
	FUNC2 ((SCREENWIDTH-13*8)/2,
		     (SCREENHEIGHT-8*8)/2,0, FUNC4 ("END0",PU_CACHE));
	laststage = 0;
	return;
    }
	
    stage = (finalecount-1180) / 5;
    if (stage > 6)
	stage = 6;
    if (stage > laststage)
    {
	FUNC1 (NULL, sfx_pistol);
	laststage = stage;
    }
	
    FUNC5 (name,"END%i",stage);
    FUNC2 ((SCREENWIDTH-13*8)/2, (SCREENHEIGHT-8*8)/2,0, FUNC4 (name,PU_CACHE));
}