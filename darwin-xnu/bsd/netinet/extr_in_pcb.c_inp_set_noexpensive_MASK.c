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
struct inpcb {int /*<<< orphan*/  inp_route; int /*<<< orphan*/  inp_flags2; } ;

/* Variables and functions */
 int /*<<< orphan*/  INP2_NO_IFF_EXPENSIVE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

void
FUNC1(struct inpcb *inp)
{
	inp->inp_flags2 |= INP2_NO_IFF_EXPENSIVE;

	/* Blow away any cached route in the PCB */
	FUNC0(&inp->inp_route);
}