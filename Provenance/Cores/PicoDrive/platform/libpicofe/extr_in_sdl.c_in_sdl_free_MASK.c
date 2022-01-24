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
struct in_sdl_state {int /*<<< orphan*/ * joy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct in_sdl_state*) ; 

__attribute__((used)) static void FUNC2(void *drv_data)
{
	struct in_sdl_state *state = drv_data;

	if (state != NULL) {
		if (state->joy != NULL)
			FUNC0(state->joy);
		FUNC1(state);
	}
}