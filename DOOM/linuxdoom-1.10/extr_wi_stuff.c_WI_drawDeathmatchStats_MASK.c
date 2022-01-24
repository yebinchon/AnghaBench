#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  width; } ;
struct TYPE_9__ {int /*<<< orphan*/  width; } ;

/* Variables and functions */
 int DM_KILLERSX ; 
 int DM_KILLERSY ; 
 int DM_MATRIXX ; 
 int DM_MATRIXY ; 
 int DM_SPACINGX ; 
 int DM_TOTALSX ; 
 int DM_VICTIMSX ; 
 int DM_VICTIMSY ; 
 int /*<<< orphan*/  FB ; 
 int MAXPLAYERS ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int WI_SPACINGY ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 TYPE_1__* bstar ; 
 int /*<<< orphan*/ ** dm_frags ; 
 int /*<<< orphan*/ * dm_totals ; 
 TYPE_1__* killers ; 
 int me ; 
 TYPE_5__** num ; 
 TYPE_1__** p ; 
 scalar_t__* playeringame ; 
 TYPE_1__* star ; 
 TYPE_1__* total ; 
 TYPE_1__* victims ; 

void FUNC6(void)
{

    int		i;
    int		j;
    int		x;
    int		y;
    int		w;
    
    int		lh;	// line height

    lh = WI_SPACINGY;

    FUNC5();
    
    // draw animated background
    FUNC2(); 
    FUNC3();

    // draw stat titles (top line)
    FUNC1(DM_TOTALSX-FUNC0(total->width)/2,
		DM_MATRIXY-WI_SPACINGY+10,
		FB,
		total);
    
    FUNC1(DM_KILLERSX, DM_KILLERSY, FB, killers);
    FUNC1(DM_VICTIMSX, DM_VICTIMSY, FB, victims);

    // draw P?
    x = DM_MATRIXX + DM_SPACINGX;
    y = DM_MATRIXY;

    for (i=0 ; i<MAXPLAYERS ; i++)
    {
	if (playeringame[i])
	{
	    FUNC1(x-FUNC0(p[i]->width)/2,
			DM_MATRIXY - WI_SPACINGY,
			FB,
			p[i]);
	    
	    FUNC1(DM_MATRIXX-FUNC0(p[i]->width)/2,
			y,
			FB,
			p[i]);

	    if (i == me)
	    {
		FUNC1(x-FUNC0(p[i]->width)/2,
			    DM_MATRIXY - WI_SPACINGY,
			    FB,
			    bstar);

		FUNC1(DM_MATRIXX-FUNC0(p[i]->width)/2,
			    y,
			    FB,
			    star);
	    }
	}
	else
	{
	    // V_DrawPatch(x-SHORT(bp[i]->width)/2,
	    //   DM_MATRIXY - WI_SPACINGY, FB, bp[i]);
	    // V_DrawPatch(DM_MATRIXX-SHORT(bp[i]->width)/2,
	    //   y, FB, bp[i]);
	}
	x += DM_SPACINGX;
	y += WI_SPACINGY;
    }

    // draw stats
    y = DM_MATRIXY+10;
    w = FUNC0(num[0]->width);

    for (i=0 ; i<MAXPLAYERS ; i++)
    {
	x = DM_MATRIXX + DM_SPACINGX;

	if (playeringame[i])
	{
	    for (j=0 ; j<MAXPLAYERS ; j++)
	    {
		if (playeringame[j])
		    FUNC4(x+w, y, dm_frags[i][j], 2);

		x += DM_SPACINGX;
	    }
	    FUNC4(DM_TOTALSX+w, y, dm_totals[i], 2);
	}
	y += WI_SPACINGY;
    }
}