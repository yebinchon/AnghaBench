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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  throttle_info_handle_t ;
struct _throttle_io_info_t {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 struct _throttle_io_info_t* _throttle_io_info ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct _throttle_io_info_t*) ; 

int
FUNC2(uint64_t throttle_mask, throttle_info_handle_t *throttle_info_handle)
{
	int	dev_index;
	struct _throttle_io_info_t *info;

	if (throttle_info_handle == NULL)
		return EINVAL;
	
	dev_index = FUNC0(throttle_mask);
	info = &_throttle_io_info[dev_index];
	FUNC1(info);
	*(struct _throttle_io_info_t**)throttle_info_handle = info;

	return 0;
}