#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int boolean ;
struct TYPE_4__ {int skills; int sitems; int ssecret; } ;
struct TYPE_3__ {int maxkills; int maxitems; int maxsecret; } ;

/* Variables and functions */
 int MAXPLAYERS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ TICRATE ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ acceleratestage ; 
 int bcnt ; 
 int* cnt_frags ; 
 int* cnt_items ; 
 int* cnt_kills ; 
 scalar_t__ cnt_pause ; 
 int* cnt_secret ; 
 scalar_t__ commercial ; 
 scalar_t__ dofrags ; 
 scalar_t__ gamemode ; 
 int ng_state ; 
 int /*<<< orphan*/ * playeringame ; 
 TYPE_2__* plrs ; 
 int /*<<< orphan*/  sfx_barexp ; 
 int /*<<< orphan*/  sfx_pistol ; 
 int /*<<< orphan*/  sfx_pldeth ; 
 int /*<<< orphan*/  sfx_sgcock ; 
 TYPE_1__* wbs ; 

void FUNC5(void)
{

    int		i;
    int		fsum;
    
    boolean	stillticking;

    FUNC4();

    if (acceleratestage && ng_state != 10)
    {
	acceleratestage = 0;

	for (i=0 ; i<MAXPLAYERS ; i++)
	{
	    if (!playeringame[i])
		continue;

	    cnt_kills[i] = (plrs[i].skills * 100) / wbs->maxkills;
	    cnt_items[i] = (plrs[i].sitems * 100) / wbs->maxitems;
	    cnt_secret[i] = (plrs[i].ssecret * 100) / wbs->maxsecret;

	    if (dofrags)
		cnt_frags[i] = FUNC1(i);
	}
	FUNC0(0, sfx_barexp);
	ng_state = 10;
    }

    if (ng_state == 2)
    {
	if (!(bcnt&3))
	    FUNC0(0, sfx_pistol);

	stillticking = false;

	for (i=0 ; i<MAXPLAYERS ; i++)
	{
	    if (!playeringame[i])
		continue;

	    cnt_kills[i] += 2;

	    if (cnt_kills[i] >= (plrs[i].skills * 100) / wbs->maxkills)
		cnt_kills[i] = (plrs[i].skills * 100) / wbs->maxkills;
	    else
		stillticking = true;
	}
	
	if (!stillticking)
	{
	    FUNC0(0, sfx_barexp);
	    ng_state++;
	}
    }
    else if (ng_state == 4)
    {
	if (!(bcnt&3))
	    FUNC0(0, sfx_pistol);

	stillticking = false;

	for (i=0 ; i<MAXPLAYERS ; i++)
	{
	    if (!playeringame[i])
		continue;

	    cnt_items[i] += 2;
	    if (cnt_items[i] >= (plrs[i].sitems * 100) / wbs->maxitems)
		cnt_items[i] = (plrs[i].sitems * 100) / wbs->maxitems;
	    else
		stillticking = true;
	}
	if (!stillticking)
	{
	    FUNC0(0, sfx_barexp);
	    ng_state++;
	}
    }
    else if (ng_state == 6)
    {
	if (!(bcnt&3))
	    FUNC0(0, sfx_pistol);

	stillticking = false;

	for (i=0 ; i<MAXPLAYERS ; i++)
	{
	    if (!playeringame[i])
		continue;

	    cnt_secret[i] += 2;

	    if (cnt_secret[i] >= (plrs[i].ssecret * 100) / wbs->maxsecret)
		cnt_secret[i] = (plrs[i].ssecret * 100) / wbs->maxsecret;
	    else
		stillticking = true;
	}
	
	if (!stillticking)
	{
	    FUNC0(0, sfx_barexp);
	    ng_state += 1 + 2*!dofrags;
	}
    }
    else if (ng_state == 8)
    {
	if (!(bcnt&3))
	    FUNC0(0, sfx_pistol);

	stillticking = false;

	for (i=0 ; i<MAXPLAYERS ; i++)
	{
	    if (!playeringame[i])
		continue;

	    cnt_frags[i] += 1;

	    if (cnt_frags[i] >= (fsum = FUNC1(i)))
		cnt_frags[i] = fsum;
	    else
		stillticking = true;
	}
	
	if (!stillticking)
	{
	    FUNC0(0, sfx_pldeth);
	    ng_state++;
	}
    }
    else if (ng_state == 10)
    {
	if (acceleratestage)
	{
	    FUNC0(0, sfx_sgcock);
	    if ( gamemode == commercial )
		FUNC2();
	    else
		FUNC3();
	}
    }
    else if (ng_state & 1)
    {
	if (!--cnt_pause)
	{
	    ng_state++;
	    cnt_pause = TICRATE;
	}
    }
}