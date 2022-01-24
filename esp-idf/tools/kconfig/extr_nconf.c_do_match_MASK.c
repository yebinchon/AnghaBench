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
struct match_state {char* pattern; scalar_t__ in_search; int /*<<< orphan*/  match_direction; } ;

/* Variables and functions */
 int /*<<< orphan*/  FIND_NEXT_MATCH_DOWN ; 
 int /*<<< orphan*/  FIND_NEXT_MATCH_UP ; 
 int KEY_BACKSPACE ; 
 int KEY_DOWN ; 
 int KEY_UP ; 
 int /*<<< orphan*/  MATCH_TINKER_PATTERN_DOWN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (char) ; 
 scalar_t__ FUNC5 (char) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int FUNC8 (char*) ; 

__attribute__((used)) static int FUNC9(int key, struct match_state *state, int *ans)
{
	char c = (char) key;
	int terminate_search = 0;
	*ans = -1;
	if (key == '/' || (state->in_search && key == 27)) {
		FUNC6(0, 0);
		FUNC7();
		FUNC2();
		state->in_search = 1-state->in_search;
		FUNC1(state->pattern, sizeof(state->pattern));
		state->match_direction = MATCH_TINKER_PATTERN_DOWN;
		return 0;
	} else if (!state->in_search)
		return 1;

	if (FUNC4(c) || FUNC5(c) || c == ' ') {
		state->pattern[FUNC8(state->pattern)] = c;
		state->pattern[FUNC8(state->pattern)] = '\0';
		FUNC0(&state->match_direction);
		*ans = FUNC3(state->pattern,
				state->match_direction);
	} else if (key == KEY_DOWN) {
		state->match_direction = FIND_NEXT_MATCH_DOWN;
		*ans = FUNC3(state->pattern,
				state->match_direction);
	} else if (key == KEY_UP) {
		state->match_direction = FIND_NEXT_MATCH_UP;
		*ans = FUNC3(state->pattern,
				state->match_direction);
	} else if (key == KEY_BACKSPACE || key == 127) {
		state->pattern[FUNC8(state->pattern)-1] = '\0';
		FUNC0(&state->match_direction);
	} else
		terminate_search = 1;

	if (terminate_search) {
		state->in_search = 0;
		FUNC1(state->pattern, sizeof(state->pattern));
		FUNC6(0, 0);
		FUNC7();
		FUNC2();
		return -1;
	}
	return 0;
}