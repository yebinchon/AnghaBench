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
typedef  int /*<<< orphan*/  user_addr_t ;
typedef  int /*<<< orphan*/  kd_threadmap ;
typedef  int boolean_t ;
struct TYPE_2__ {int kdebug_flags; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODATA ; 
 int KDBG_MAPINIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 
 TYPE_1__ kd_ctrl_page ; 
 int kd_mapcount ; 
 int /*<<< orphan*/  kd_mapptr ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static int
FUNC4(user_addr_t buffer, size_t *buffer_size)
{
	boolean_t map_initialized;
	size_t map_size;
	int ret = 0;

	FUNC3();
	FUNC0(buffer_size != NULL);

	map_initialized = (kd_ctrl_page.kdebug_flags & KDBG_MAPINIT);
	if (!map_initialized) {
		return ENODATA;
	}

	map_size = kd_mapcount * sizeof(kd_threadmap);
	if (*buffer_size < map_size) {
		return EINVAL;
	}

	ret = FUNC1(kd_mapptr, buffer, map_size);
	if (ret == 0) {
		FUNC2();
	}

	return ret;
}