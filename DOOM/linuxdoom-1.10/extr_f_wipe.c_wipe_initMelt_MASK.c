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
 int FUNC0 () ; 
 int /*<<< orphan*/  PU_STATIC ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  wipe_scr ; 
 scalar_t__ wipe_scr_end ; 
 scalar_t__ wipe_scr_start ; 
 int /*<<< orphan*/  FUNC3 (short*,int,int) ; 
 int* y ; 

int
FUNC4
( int	width,
  int	height,
  int	ticks )
{
    int i, r;
    
    // copy start screen to main screen
    FUNC2(wipe_scr, wipe_scr_start, width*height);
    
    // makes this wipe faster (in theory)
    // to have stuff in column-major format
    FUNC3((short*)wipe_scr_start, width/2, height);
    FUNC3((short*)wipe_scr_end, width/2, height);
    
    // setup initial column positions
    // (y<0 => not ready to scroll yet)
    y = (int *) FUNC1(width*sizeof(int), PU_STATIC, 0);
    y[0] = -(FUNC0()%16);
    for (i=1;i<width;i++)
    {
	r = (FUNC0()%3) - 1;
	y[i] = y[i-1] + r;
	if (y[i] > 0) y[i] = 0;
	else if (y[i] == -16) y[i] = -15;
    }

    return 0;
}