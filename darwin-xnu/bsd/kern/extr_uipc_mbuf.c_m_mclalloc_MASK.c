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
typedef  int /*<<< orphan*/  caddr_t ;

/* Variables and functions */
 int MCR_NOSLEEP ; 
 int MCR_TRYHARD ; 
 int /*<<< orphan*/  MC_CL ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 

caddr_t
FUNC3(int wait)
{
	int mcflags = FUNC0(wait);

	/* Is this due to a non-blocking retry?  If so, then try harder */
	if (mcflags & MCR_NOSLEEP)
		mcflags |= MCR_TRYHARD;

	return (FUNC2(FUNC1(MC_CL), mcflags));
}