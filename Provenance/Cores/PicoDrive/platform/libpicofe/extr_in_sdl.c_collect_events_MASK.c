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
struct in_sdl_state {scalar_t__ joy; } ;
typedef  int /*<<< orphan*/  events ;
typedef  int Uint32 ;
typedef  int /*<<< orphan*/  SDL_Event ;

/* Variables and functions */
 int JOY_EVENTS ; 
 int SDL_ALLEVENTS ; 
 int /*<<< orphan*/  SDL_GETEVENT ; 
 int /*<<< orphan*/  SDL_PEEKEVENT ; 
 int FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct in_sdl_state*,int /*<<< orphan*/ *,int*,int*) ; 
 int FUNC5 (struct in_sdl_state*,int /*<<< orphan*/ *,int*,int*) ; 

__attribute__((used)) static int FUNC6(struct in_sdl_state *state, int *one_kc, int *one_down)
{
	SDL_Event events[4];
	Uint32 mask = state->joy ? JOY_EVENTS : (SDL_ALLEVENTS & ~JOY_EVENTS);
	int count, maxcount;
	int i, ret, retval = 0;
	int num_events, num_peeped_events;
	SDL_Event *event;

	maxcount = (one_kc != NULL) ? 1 : sizeof(events) / sizeof(events[0]);

	FUNC1();

	num_events = FUNC0(NULL, 0, SDL_PEEKEVENT, mask);

	for (num_peeped_events = 0; num_peeped_events < num_events; num_peeped_events += count) {
		count = FUNC0(events, maxcount, SDL_GETEVENT, mask);
		if (count <= 0)
			break;
		for (i = 0; i < count; i++) {
			event = &events[i];
			if (state->joy)
				ret = FUNC5(state,
					event, one_kc, one_down);
			else
				ret = FUNC4(state,
					event, one_kc, one_down);
			if (ret < 0) {
				switch (ret) {
					case -2:
						FUNC2(event);
						break;
					default:
						if (&ext_event_handler != NULL)
							FUNC3(event);
						break;
				}
				continue;
			}

			retval |= ret;
			if (one_kc != NULL && ret)
			{
				// don't lose events other devices might want to handle
				for (i++; i < count; i++)
					FUNC2(&events[i]);
				goto out;
			}
		}
	}

out:
	return retval;
}