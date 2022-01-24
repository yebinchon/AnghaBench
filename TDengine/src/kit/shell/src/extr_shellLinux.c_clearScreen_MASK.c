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
struct winsize {int ws_col; } ;

/* Variables and functions */
 int /*<<< orphan*/  DOWN ; 
 int /*<<< orphan*/  LEFT ; 
 int /*<<< orphan*/  TIOCGWINSZ ; 
 int /*<<< orphan*/  UP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct winsize*) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stdout ; 

void FUNC4(int ecmd_pos, int cursor_pos) {
  struct winsize w;
  FUNC2(0, TIOCGWINSZ, &w);

  int cursor_x = cursor_pos / w.ws_col;
  int cursor_y = cursor_pos % w.ws_col;
  int command_x = ecmd_pos / w.ws_col;
  FUNC3(cursor_y, LEFT);
  FUNC3(command_x - cursor_x, DOWN);
  FUNC1(stdout, "\033[2K");
  for (int i = 0; i < command_x; i++) {
    FUNC3(1, UP);
    FUNC1(stdout, "\033[2K");
  }
  FUNC0(stdout);
}