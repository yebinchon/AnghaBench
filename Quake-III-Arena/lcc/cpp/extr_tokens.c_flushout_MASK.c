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
 scalar_t__ wbp ; 
 scalar_t__ wbuf ; 
 int /*<<< orphan*/  FUNC0 (int,scalar_t__,scalar_t__) ; 

void
FUNC1(void)
{
	if (wbp>wbuf) {
		FUNC0(1, wbuf, wbp-wbuf);
		wbp = wbuf;
	}
}