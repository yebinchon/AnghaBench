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
struct TYPE_2__ {int epsd; int last; int next; scalar_t__ didsecret; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ commercial ; 
 scalar_t__ gamemode ; 
 scalar_t__ snl_pointeron ; 
 int /*<<< orphan*/  splat ; 
 TYPE_1__* wbs ; 
 int /*<<< orphan*/ * yah ; 

void FUNC4(void)
{

    int		i;
    int		last;

    FUNC3();

    // draw animated background
    FUNC0(); 

    if ( gamemode != commercial)
    {
  	if (wbs->epsd > 2)
	{
	    FUNC1();
	    return;
	}
	
	last = (wbs->last == 8) ? wbs->next - 1 : wbs->last;

	// draw a splat on taken cities.
	for (i=0 ; i<=last ; i++)
	    FUNC2(i, &splat);

	// splat the secret level?
	if (wbs->didsecret)
	    FUNC2(8, &splat);

	// draw flashing ptr
	if (snl_pointeron)
	    FUNC2(wbs->next, yah); 
    }

    // draws which level you are entering..
    if ( (gamemode != commercial)
	 || wbs->next != 30)
	FUNC1();  

}