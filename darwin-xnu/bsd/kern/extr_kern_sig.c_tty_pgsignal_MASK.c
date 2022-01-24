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
struct tty {int dummy; } ;
struct pgrp {int dummy; } ;

/* Variables and functions */
 struct pgrp* PGRP_NULL ; 
 int /*<<< orphan*/  FUNC0 (struct pgrp*) ; 
 int /*<<< orphan*/  FUNC1 (struct pgrp*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  pgsignal_callback ; 
 int /*<<< orphan*/  pgsignal_filt ; 
 struct pgrp* FUNC2 (struct tty*) ; 

void
FUNC3(struct tty *tp, int signum, int checkctty)
{
	struct pgrp * pg;

	pg = FUNC2(tp);
	if (pg != PGRP_NULL) {
		FUNC1(pg, 0, pgsignal_callback, &signum, pgsignal_filt, &checkctty);
		FUNC0(pg);
	}
}