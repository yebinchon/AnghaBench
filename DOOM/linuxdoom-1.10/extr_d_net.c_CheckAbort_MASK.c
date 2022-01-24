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
struct TYPE_3__ {scalar_t__ type; scalar_t__ data1; } ;
typedef  TYPE_1__ event_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ KEY_ESCAPE ; 
 int MAXEVENTS ; 
 scalar_t__ ev_keydown ; 
 int eventhead ; 
 TYPE_1__* events ; 
 int eventtail ; 

void FUNC3 (void)
{
    event_t *ev;
    int		stoptic;
	
    stoptic = FUNC1 () + 2; 
    while (FUNC1() < stoptic) 
	FUNC2 (); 
	
    FUNC2 ();
    for ( ; eventtail != eventhead 
	      ; eventtail = (++eventtail)&(MAXEVENTS-1) ) 
    { 
	ev = &events[eventtail]; 
	if (ev->type == ev_keydown && ev->data1 == KEY_ESCAPE)
	    FUNC0 ("Network game synchronization aborted.");
    } 
}