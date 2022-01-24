#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  itemweightconfig; int /*<<< orphan*/  itemweightindex; } ;
typedef  TYPE_1__ bot_goalstate_t ;
struct TYPE_5__ {int /*<<< orphan*/  (* Print ) (int /*<<< orphan*/ ,char*) ;} ;

/* Variables and functions */
 int BLERR_CANNOTLOADITEMWEIGHTS ; 
 int BLERR_NOERROR ; 
 TYPE_1__* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PRT_FATAL ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 TYPE_2__ botimport ; 
 int /*<<< orphan*/  itemconfig ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 

int FUNC4(int goalstate, char *filename)
{
	bot_goalstate_t *gs;

	gs = FUNC0(goalstate);
	if (!gs) return BLERR_CANNOTLOADITEMWEIGHTS;
	//load the weight configuration
	gs->itemweightconfig = FUNC2(filename);
	if (!gs->itemweightconfig)
	{
		botimport.Print(PRT_FATAL, "couldn't load weights\n");
		return BLERR_CANNOTLOADITEMWEIGHTS;
	} //end if
	//if there's no item configuration
	if (!itemconfig) return BLERR_CANNOTLOADITEMWEIGHTS;
	//create the item weight index
	gs->itemweightindex = FUNC1(gs->itemweightconfig, itemconfig);
	//everything went ok
	return BLERR_NOERROR;
}