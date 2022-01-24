#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {void* firstline; void* numlines; } ;
typedef  TYPE_1__ subsector_t ;
struct TYPE_7__ {int /*<<< orphan*/  firstseg; int /*<<< orphan*/  numsegs; } ;
typedef  TYPE_2__ mapsubsector_t ;
typedef  int /*<<< orphan*/  byte ;

/* Variables and functions */
 int /*<<< orphan*/  PU_LEVEL ; 
 int /*<<< orphan*/  PU_STATIC ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC4 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int numsubsectors ; 
 TYPE_1__* subsectors ; 

void FUNC6 (int lump)
{
    byte*		data;
    int			i;
    mapsubsector_t*	ms;
    subsector_t*	ss;
	
    numsubsectors = FUNC2 (lump) / sizeof(mapsubsector_t);
    subsectors = FUNC4 (numsubsectors*sizeof(subsector_t),PU_LEVEL,0);	
    data = FUNC1 (lump,PU_STATIC);
	
    ms = (mapsubsector_t *)data;
    FUNC5 (subsectors,0, numsubsectors*sizeof(subsector_t));
    ss = subsectors;
    
    for (i=0 ; i<numsubsectors ; i++, ss++, ms++)
    {
	ss->numlines = FUNC0(ms->numsegs);
	ss->firstline = FUNC0(ms->firstseg);
    }
	
    FUNC3 (data);
}