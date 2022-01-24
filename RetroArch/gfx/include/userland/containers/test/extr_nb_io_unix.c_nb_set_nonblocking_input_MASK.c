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
struct termios {int* c_cc; int /*<<< orphan*/  c_lflag; } ;

/* Variables and functions */
 int /*<<< orphan*/  ICANON ; 
 int /*<<< orphan*/  STDIN_FILENO ; 
 int /*<<< orphan*/  TCSANOW ; 
 size_t VMIN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct termios*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct termios*) ; 

void FUNC2(int enable)
{
   struct termios ttystate;

    //get the terminal state
    FUNC0(STDIN_FILENO, &ttystate);

    if (enable)
    {
        //turn off canonical mode
        ttystate.c_lflag &= ~ICANON;
        //minimum of number input read.
        ttystate.c_cc[VMIN] = 1;
    }
    else
    {
        //turn on canonical mode
        ttystate.c_lflag |= ICANON;
    }

    //set the terminal attributes.
    FUNC1(STDIN_FILENO, TCSANOW, &ttystate);
}