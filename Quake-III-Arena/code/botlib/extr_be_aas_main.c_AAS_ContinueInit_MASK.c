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
struct TYPE_4__ {int /*<<< orphan*/  filename; scalar_t__ savefile; scalar_t__ initialized; int /*<<< orphan*/  loaded; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* Print ) (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 scalar_t__ FUNC0 (float) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (char*) ; 
 scalar_t__ FUNC7 (char*,char*) ; 
 int /*<<< orphan*/  PRT_ERROR ; 
 int /*<<< orphan*/  PRT_MESSAGE ; 
 TYPE_2__ aasworld ; 
 TYPE_1__ botimport ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

void FUNC10(float time)
{
	//if no AAS file loaded
	if (!aasworld.loaded) return;
	//if AAS is already initialized
	if (aasworld.initialized) return;
	//calculate reachability, if not finished return
	if (FUNC0(time)) return;
	//initialize clustering for the new map
	FUNC1();
	//if reachability has been calculated and an AAS file should be written
	//or there is a forced data optimization
	if (aasworld.savefile || ((int)FUNC6("forcewrite")))
	{
		//optimize the AAS data
		if ((int)FUNC7("aasoptimize", "0")) FUNC3();
		//save the AAS file
		if (FUNC5(aasworld.filename))
		{
			botimport.Print(PRT_MESSAGE, "%s written succesfully\n", aasworld.filename);
		} //end if
		else
		{
			botimport.Print(PRT_ERROR, "couldn't write %s\n", aasworld.filename);
		} //end else
	} //end if
	//initialize the routing
	FUNC2();
	//at this point AAS is initialized
	FUNC4();
}