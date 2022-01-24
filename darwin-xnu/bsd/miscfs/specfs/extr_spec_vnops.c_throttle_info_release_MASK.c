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
struct _throttle_io_info_t {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct _throttle_io_info_t*,struct _throttle_io_info_t*) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 

void
FUNC2(void *throttle_info)
{
	FUNC0("Releaseing info = %p\n",
		(struct _throttle_io_info_t *)throttle_info,
		(struct _throttle_io_info_t *)throttle_info);
	if (throttle_info) /* Just to be careful */
		FUNC1(throttle_info);
}