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
struct termios {int c_lflag; } ;

/* Variables and functions */
 int ECHO ; 
 int ICANON ; 
 int /*<<< orphan*/  STDIN_FILENO ; 
 int /*<<< orphan*/  TCSANOW ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct termios*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct termios*) ; 

__attribute__((used)) static int FUNC3(void)
{
  struct termios oldt, newt;
  int ch;
  FUNC1(STDIN_FILENO, &oldt);
  newt = oldt;
  newt.c_lflag &= ~( ICANON | ECHO);
  FUNC2(STDIN_FILENO, TCSANOW, &newt);
  ch = FUNC0();
  FUNC2(STDIN_FILENO, TCSANOW, &oldt);
  return ch;
}