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
struct TYPE_4__ {float time; int /*<<< orphan*/  numframes; scalar_t__ frameroutingupdates; } ;
struct TYPE_3__ {scalar_t__ value; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (float) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int BLERR_NOERROR ; 
 scalar_t__ FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 TYPE_2__ aasworld ; 
 scalar_t__ bot_developer ; 
 TYPE_1__* saveroutingcache ; 

int FUNC9(float time)
{
	aasworld.time = time;
	//unlink all entities that were not updated last frame
	FUNC3();
	//invalidate the entities
	FUNC1();
	//initialize AAS
	FUNC0(time);
	//
	aasworld.frameroutingupdates = 0;
	//
	if (bot_developer)
	{
		if (FUNC5("showcacheupdates"))
		{
			FUNC2();
			FUNC6("showcacheupdates", "0");
		} //end if
		if (FUNC5("showmemoryusage"))
		{
			FUNC8();
			FUNC6("showmemoryusage", "0");
		} //end if
		if (FUNC5("memorydump"))
		{
			FUNC7();
			FUNC6("memorydump", "0");
		} //end if
	} //end if
	//
	if (saveroutingcache->value)
	{
		FUNC4();
		FUNC6("saveroutingcache", "0");
	} //end if
	//
	aasworld.numframes++;
	return BLERR_NOERROR;
}