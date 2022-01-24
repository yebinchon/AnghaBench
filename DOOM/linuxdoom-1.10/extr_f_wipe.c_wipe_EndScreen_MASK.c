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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * screens ; 
 int /*<<< orphan*/  wipe_scr_end ; 
 int /*<<< orphan*/  wipe_scr_start ; 

int
FUNC2
( int	x,
  int	y,
  int	width,
  int	height )
{
    wipe_scr_end = screens[3];
    FUNC0(wipe_scr_end);
    FUNC1(x, y, 0, width, height, wipe_scr_start); // restore start scr.
    return 0;
}