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
#define  MA_CTRL_EMU 130 
#define  MA_CTRL_PLAYER1 129 
#define  MA_CTRL_PLAYER2 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  emuctrl_actions ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  me_ctrl_actions ; 

__attribute__((used)) static int FUNC2(int id, int keys)
{
	switch (id) {
		case MA_CTRL_PLAYER1:
			FUNC1(me_ctrl_actions, FUNC0(me_ctrl_actions) - 1, 0);
			break;
		case MA_CTRL_PLAYER2:
			FUNC1(me_ctrl_actions, FUNC0(me_ctrl_actions) - 1, 1);
			break;
		case MA_CTRL_EMU:
			FUNC1(emuctrl_actions, FUNC0(emuctrl_actions) - 1, -1);
			break;
		default:
			break;
	}
	return 0;
}