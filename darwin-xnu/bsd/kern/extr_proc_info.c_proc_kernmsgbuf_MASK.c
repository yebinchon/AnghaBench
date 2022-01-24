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
typedef  int /*<<< orphan*/  user_addr_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  u_short ;
typedef  int /*<<< orphan*/  int32_t ;

/* Variables and functions */
 int EPERM ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int 
FUNC3(user_addr_t buffer, uint32_t buffersize, int32_t * retval)
{
	if (FUNC2(FUNC0(), (u_short *)0) == 0) {
		return(FUNC1(buffer, buffersize, retval));
	} else
		return(EPERM);
}