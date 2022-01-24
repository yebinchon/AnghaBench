#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ user_addr_t ;
typedef  int /*<<< orphan*/  kd_threadmap ;
typedef  int boolean_t ;
struct TYPE_2__ {int kdebug_flags; } ;

/* Variables and functions */
 int EINVAL ; 
 int KDBG_MAPINIT ; 
 TYPE_1__ kd_ctrl_page ; 
 int kd_mapcount ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (scalar_t__,size_t*,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 

int
FUNC3(user_addr_t buffer, size_t buffer_size, int fd)
{
	int ret = 0;
	boolean_t map_initialized;
	size_t map_size;

	FUNC2();

	if ((!fd && !buffer) || (fd && buffer)) {
		return EINVAL;
	}

	map_initialized = (kd_ctrl_page.kdebug_flags & KDBG_MAPINIT);
	map_size = kd_mapcount * sizeof(kd_threadmap);

	if (map_initialized && (buffer_size >= map_size))
	{
		ret = FUNC1(buffer, &buffer_size, fd);

		if (ret == 0) {
			FUNC0();
		}
	} else {
		ret = EINVAL;
	}

	return  ret;
}