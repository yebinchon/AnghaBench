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
struct in_sdl_state {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct in_sdl_state*,int*,int*) ; 

__attribute__((used)) static int FUNC1(void *drv_data, int *is_down)
{
	struct in_sdl_state *state = drv_data;
	int ret_kc = -1, ret_down = 0;

	FUNC0(state, &ret_kc, &ret_down);

	if (is_down != NULL)
		*is_down = ret_down;

	return ret_kc;
}