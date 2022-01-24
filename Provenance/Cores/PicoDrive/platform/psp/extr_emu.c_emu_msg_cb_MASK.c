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

/* Variables and functions */
 scalar_t__ noticeMsgTime ; 
 int /*<<< orphan*/  FUNC0 (int,char const*,int,int) ; 
 int reset_timing ; 
 scalar_t__ FUNC1 () ; 

void FUNC2(const char *msg)
{
	FUNC0(4, msg, 1, 1);
	noticeMsgTime = FUNC1() - 2000000;

	/* assumption: emu_msg_cb gets called only when something slow is about to happen */
	reset_timing = 1;
}