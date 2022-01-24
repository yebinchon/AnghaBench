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
struct TYPE_4__ {int /*<<< orphan*/  weaponweightconfig; int /*<<< orphan*/  weaponweightindex; } ;
typedef  TYPE_1__ bot_weaponstate_t ;
struct TYPE_5__ {int /*<<< orphan*/  (* Print ) (int /*<<< orphan*/ ,char*,char*) ;} ;

/* Variables and functions */
 int BLERR_CANNOTLOADWEAPONCONFIG ; 
 int BLERR_CANNOTLOADWEAPONWEIGHTS ; 
 int BLERR_NOERROR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_1__* FUNC1 (int) ; 
 int /*<<< orphan*/  PRT_FATAL ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__ botimport ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  weaponconfig ; 

int FUNC5(int weaponstate, char *filename)
{
	bot_weaponstate_t *ws;

	ws = FUNC1(weaponstate);
	if (!ws) return BLERR_CANNOTLOADWEAPONWEIGHTS;
	FUNC0(weaponstate);
	//
	ws->weaponweightconfig = FUNC2(filename);
	if (!ws->weaponweightconfig)
	{
		botimport.Print(PRT_FATAL, "couldn't load weapon config %s\n", filename);
		return BLERR_CANNOTLOADWEAPONWEIGHTS;
	} //end if
	if (!weaponconfig) return BLERR_CANNOTLOADWEAPONCONFIG;
	ws->weaponweightindex = FUNC3(ws->weaponweightconfig, weaponconfig);
	return BLERR_NOERROR;
}