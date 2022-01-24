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
struct TYPE_4__ {int nanims; int /*<<< orphan*/ * p; } ;
struct TYPE_3__ {int epsd; } ;

/* Variables and functions */
 int MAXPLAYERS ; 
 int* NUMANIMS ; 
 int NUMCMAPS ; 
 int NUMMAPS ; 
 int /*<<< orphan*/  PU_CACHE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_2__** anims ; 
 int /*<<< orphan*/ * bp ; 
 int /*<<< orphan*/  colon ; 
 scalar_t__ commercial ; 
 int /*<<< orphan*/  entering ; 
 int /*<<< orphan*/  finished ; 
 int /*<<< orphan*/  frags ; 
 scalar_t__ gamemode ; 
 int /*<<< orphan*/  items ; 
 int /*<<< orphan*/  killers ; 
 int /*<<< orphan*/  kills ; 
 int /*<<< orphan*/ * lnames ; 
 int /*<<< orphan*/ * num ; 
 int /*<<< orphan*/ * p ; 
 int /*<<< orphan*/  par ; 
 int /*<<< orphan*/  percent ; 
 int /*<<< orphan*/  secret ; 
 int /*<<< orphan*/  sp_secret ; 
 int /*<<< orphan*/  splat ; 
 int /*<<< orphan*/  sucks ; 
 int /*<<< orphan*/  time ; 
 int /*<<< orphan*/  total ; 
 int /*<<< orphan*/  victims ; 
 TYPE_1__* wbs ; 
 int /*<<< orphan*/  wiminus ; 
 int /*<<< orphan*/ * yah ; 

void FUNC2(void)
{
    int		i;
    int		j;

    FUNC0(wiminus, PU_CACHE);

    for (i=0 ; i<10 ; i++)
	FUNC0(num[i], PU_CACHE);
    
    if (gamemode == commercial)
    {
  	for (i=0 ; i<NUMCMAPS ; i++)
	    FUNC0(lnames[i], PU_CACHE);
    }
    else
    {
	FUNC0(yah[0], PU_CACHE);
	FUNC0(yah[1], PU_CACHE);

	FUNC0(splat, PU_CACHE);

	for (i=0 ; i<NUMMAPS ; i++)
	    FUNC0(lnames[i], PU_CACHE);
	
	if (wbs->epsd < 3)
	{
	    for (j=0;j<NUMANIMS[wbs->epsd];j++)
	    {
		if (wbs->epsd != 1 || j != 8)
		    for (i=0;i<anims[wbs->epsd][j].nanims;i++)
			FUNC0(anims[wbs->epsd][j].p[i], PU_CACHE);
	    }
	}
    }
    
    FUNC1(lnames);

    FUNC0(percent, PU_CACHE);
    FUNC0(colon, PU_CACHE);
    FUNC0(finished, PU_CACHE);
    FUNC0(entering, PU_CACHE);
    FUNC0(kills, PU_CACHE);
    FUNC0(secret, PU_CACHE);
    FUNC0(sp_secret, PU_CACHE);
    FUNC0(items, PU_CACHE);
    FUNC0(frags, PU_CACHE);
    FUNC0(time, PU_CACHE);
    FUNC0(sucks, PU_CACHE);
    FUNC0(par, PU_CACHE);

    FUNC0(victims, PU_CACHE);
    FUNC0(killers, PU_CACHE);
    FUNC0(total, PU_CACHE);
    //  Z_ChangeTag(star, PU_CACHE);
    //  Z_ChangeTag(bstar, PU_CACHE);
    
    for (i=0 ; i<MAXPLAYERS ; i++)
	FUNC0(p[i], PU_CACHE);

    for (i=0 ; i<MAXPLAYERS ; i++)
	FUNC0(bp[i], PU_CACHE);
}