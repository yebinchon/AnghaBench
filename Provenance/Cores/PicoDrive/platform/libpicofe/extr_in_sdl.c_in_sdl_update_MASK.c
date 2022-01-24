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
struct in_sdl_state {int* keystate; } ;
typedef  int keybits_t ;

/* Variables and functions */
 int IN_BINDTYPE_COUNT ; 
 size_t FUNC0 (int,int) ; 
 int KEYBITS_WORD_BITS ; 
 int SDLK_LAST ; 
 int /*<<< orphan*/  FUNC1 (struct in_sdl_state*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(void *drv_data, const int *binds, int *result)
{
	struct in_sdl_state *state = drv_data;
	keybits_t mask;
	int i, sym, bit, b;

	FUNC1(state, NULL, NULL);

	for (i = 0; i < SDLK_LAST / KEYBITS_WORD_BITS + 1; i++) {
		mask = state->keystate[i];
		if (mask == 0)
			continue;
		for (bit = 0; mask != 0; bit++, mask >>= 1) {
			if ((mask & 1) == 0)
				continue;
			sym = i * KEYBITS_WORD_BITS + bit;

			for (b = 0; b < IN_BINDTYPE_COUNT; b++)
				result[b] |= binds[FUNC0(sym, b)];
		}
	}

	return 0;
}