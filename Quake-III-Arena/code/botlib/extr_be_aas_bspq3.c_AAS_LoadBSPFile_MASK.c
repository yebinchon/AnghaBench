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
struct TYPE_4__ {int /*<<< orphan*/  (* BSPEntityData ) () ;} ;
struct TYPE_3__ {char* dentdata; int /*<<< orphan*/  loaded; scalar_t__ entdatasize; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int BLERR_NOERROR ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 TYPE_2__ botimport ; 
 TYPE_1__ bspworld ; 
 int /*<<< orphan*/  qtrue ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 

int FUNC7(void)
{
	FUNC0();
	bspworld.entdatasize = FUNC4(botimport.BSPEntityData()) + 1;
	bspworld.dentdata = (char *) FUNC3(bspworld.entdatasize);
	FUNC2(bspworld.dentdata, botimport.BSPEntityData(), bspworld.entdatasize);
	FUNC1();
	bspworld.loaded = qtrue;
	return BLERR_NOERROR;
}