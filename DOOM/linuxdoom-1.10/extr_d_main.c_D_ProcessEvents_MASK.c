#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  event_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int MAXEVENTS ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (char*) ; 
 scalar_t__ commercial ; 
 int eventhead ; 
 int /*<<< orphan*/ * events ; 
 int eventtail ; 
 scalar_t__ gamemode ; 

void FUNC3 (void)
{
    event_t*	ev;
	
    // IF STORE DEMO, DO NOT ACCEPT INPUT
    if ( ( gamemode == commercial )
	 && (FUNC2("map01")<0) )
      return;
	
    for ( ; eventtail != eventhead ; eventtail = (++eventtail)&(MAXEVENTS-1) )
    {
	ev = &events[eventtail];
	if (FUNC1 (ev))
	    continue;               // menu ate the event
	FUNC0 (ev);
    }
}