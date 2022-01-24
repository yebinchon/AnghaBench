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
 int DOWN ; 
 int LEFT ; 
 int RIGHT ; 
 int UP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  stdout ; 

void FUNC2(int step, int direction) {
  if (step > 0) {
    if (direction == LEFT) {
      FUNC1(stdout, "\033[%dD", step);
    } else if (direction == RIGHT) {
      FUNC1(stdout, "\033[%dC", step);
    } else if (direction == UP) {
      FUNC1(stdout, "\033[%dA", step);
    } else if (direction == DOWN) {
      FUNC1(stdout, "\033[%dB", step);
    }
    FUNC0(stdout);
  }
}