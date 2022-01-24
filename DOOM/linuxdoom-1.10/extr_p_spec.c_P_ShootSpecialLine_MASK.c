#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  player; } ;
typedef  TYPE_1__ mobj_t ;
struct TYPE_10__ {int special; } ;
typedef  TYPE_2__ line_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  open ; 
 int /*<<< orphan*/  raiseFloor ; 
 int /*<<< orphan*/  raiseToNearestAndChange ; 

void
FUNC4
( mobj_t*	thing,
  line_t*	line )
{
    int		ok;
    
    //	Impacts that other things can activate.
    if (!thing->player)
    {
	ok = 0;
	switch(line->special)
	{
	  case 46:
	    // OPEN DOOR IMPACT
	    ok = 1;
	    break;
	}
	if (!ok)
	    return;
    }

    switch(line->special)
    {
      case 24:
	// RAISE FLOOR
	FUNC1(line,raiseFloor);
	FUNC3(line,0);
	break;
	
      case 46:
	// OPEN DOOR
	FUNC0(line,open);
	FUNC3(line,1);
	break;
	
      case 47:
	// RAISE FLOOR NEAR AND CHANGE
	FUNC2(line,raiseToNearestAndChange,0);
	FUNC3(line,0);
	break;
    }
}