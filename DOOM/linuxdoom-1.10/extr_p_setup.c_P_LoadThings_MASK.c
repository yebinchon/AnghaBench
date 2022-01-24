#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int type; int x; int y; int angle; int options; } ;
typedef  TYPE_1__ mapthing_t ;
typedef  int /*<<< orphan*/  byte ;
typedef  int boolean ;

/* Variables and functions */
 int /*<<< orphan*/  PU_STATIC ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 void* FUNC1 (int) ; 
 int /*<<< orphan*/ * FUNC2 (int,int /*<<< orphan*/ ) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ commercial ; 
 scalar_t__ gamemode ; 

void FUNC5 (int lump)
{
    byte*		data;
    int			i;
    mapthing_t*		mt;
    int			numthings;
    boolean		spawn;
	
    data = FUNC2 (lump,PU_STATIC);
    numthings = FUNC3 (lump) / sizeof(mapthing_t);
	
    mt = (mapthing_t *)data;
    for (i=0 ; i<numthings ; i++, mt++)
    {
	spawn = true;

	// Do not spawn cool, new monsters if !commercial
	if ( gamemode != commercial)
	{
	    switch(mt->type)
	    {
	      case 68:	// Arachnotron
	      case 64:	// Archvile
	      case 88:	// Boss Brain
	      case 89:	// Boss Shooter
	      case 69:	// Hell Knight
	      case 67:	// Mancubus
	      case 71:	// Pain Elemental
	      case 65:	// Former Human Commando
	      case 66:	// Revenant
	      case 84:	// Wolf SS
		spawn = false;
		break;
	    }
	}
	if (spawn == false)
	    break;

	// Do spawn all other stuff. 
	mt->x = FUNC1(mt->x);
	mt->y = FUNC1(mt->y);
	mt->angle = FUNC1(mt->angle);
	mt->type = FUNC1(mt->type);
	mt->options = FUNC1(mt->options);
	
	FUNC0 (mt);
    }
	
    FUNC4 (data);
}