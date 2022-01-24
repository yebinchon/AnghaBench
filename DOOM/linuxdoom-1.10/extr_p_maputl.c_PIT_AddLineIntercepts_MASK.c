#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {int /*<<< orphan*/  backsector; TYPE_2__* v2; TYPE_1__* v1; } ;
typedef  TYPE_4__ line_t ;
typedef  int fixed_t ;
typedef  int /*<<< orphan*/  divline_t ;
typedef  int boolean ;
struct TYPE_14__ {TYPE_4__* line; } ;
struct TYPE_17__ {int frac; int isaline; TYPE_3__ d; } ;
struct TYPE_16__ {int dx; int dy; scalar_t__ y; scalar_t__ x; } ;
struct TYPE_13__ {int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;
struct TYPE_12__ {int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;

/* Variables and functions */
 int FRACUNIT ; 
 int FUNC0 (TYPE_5__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_5__*) ; 
 int FUNC3 (scalar_t__,scalar_t__,TYPE_4__*) ; 
 scalar_t__ earlyout ; 
 TYPE_6__* intercept_p ; 
 TYPE_5__ trace ; 

boolean
FUNC4 (line_t* ld)
{
    int			s1;
    int			s2;
    fixed_t		frac;
    divline_t		dl;
	
    // avoid precision problems with two routines
    if ( trace.dx > FRACUNIT*16
	 || trace.dy > FRACUNIT*16
	 || trace.dx < -FRACUNIT*16
	 || trace.dy < -FRACUNIT*16)
    {
	s1 = FUNC2 (ld->v1->x, ld->v1->y, &trace);
	s2 = FUNC2 (ld->v2->x, ld->v2->y, &trace);
    }
    else
    {
	s1 = FUNC3 (trace.x, trace.y, ld);
	s2 = FUNC3 (trace.x+trace.dx, trace.y+trace.dy, ld);
    }
    
    if (s1 == s2)
	return true;	// line isn't crossed
    
    // hit the line
    FUNC1 (ld, &dl);
    frac = FUNC0 (&trace, &dl);

    if (frac < 0)
	return true;	// behind source
	
    // try to early out the check
    if (earlyout
	&& frac < FRACUNIT
	&& !ld->backsector)
    {
	return false;	// stop checking
    }
    
	
    intercept_p->frac = frac;
    intercept_p->isaline = true;
    intercept_p->d.line = ld;
    intercept_p++;

    return true;	// continue
}