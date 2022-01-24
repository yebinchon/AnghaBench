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
typedef  int /*<<< orphan*/  gint ;

/* Variables and functions */
 void* h_live ; 
 void* h_queue ; 
 void* h_scan ; 
 int /*<<< orphan*/  FUNC0 () ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 

void
FUNC2(gint debug)
{
    /* Init libhb */
    FUNC0();
    h_scan = FUNC1( debug );
    h_queue = FUNC1( debug );
    h_live = FUNC1( debug );
}