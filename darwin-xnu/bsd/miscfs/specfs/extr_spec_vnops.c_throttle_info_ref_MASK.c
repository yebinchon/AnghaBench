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
struct _throttle_io_info_t {scalar_t__ throttle_alloc; int /*<<< orphan*/  throttle_refcnt; } ;
typedef  int SInt32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct _throttle_io_info_t*,int,struct _throttle_io_info_t*) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static SInt32
FUNC3(struct _throttle_io_info_t *info)
{
	SInt32 oldValue = FUNC1(&info->throttle_refcnt);

	FUNC0("refcnt = %d info = %p\n", 
		info, (int)(oldValue -1), info );
	/* Allocated items should never have a reference of zero */
	if (info->throttle_alloc && (oldValue == 0))
		FUNC2("Taking a reference without calling create throttle info!\n");

	return oldValue;
}