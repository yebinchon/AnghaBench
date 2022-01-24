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
struct rewriteConfigState {int /*<<< orphan*/  rewritten; int /*<<< orphan*/  option_to_line; int /*<<< orphan*/  numlines; int /*<<< orphan*/  lines; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rewriteConfigState*) ; 

void FUNC3(struct rewriteConfigState *state) {
    FUNC1(state->lines,state->numlines);
    FUNC0(state->option_to_line);
    FUNC0(state->rewritten);
    FUNC2(state);
}