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

/* Variables and functions */
 int /*<<< orphan*/  BOTLIB_AI_PUSH_GOAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,void*) ; 

void FUNC1(int goalstate, void /* struct bot_goal_s */ *goal) {
	FUNC0( BOTLIB_AI_PUSH_GOAL, goalstate, goal );
}