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
 int /*<<< orphan*/  BG ; 
 int /*<<< orphan*/  FG ; 
 int /*<<< orphan*/  ST_FX ; 
 int /*<<< orphan*/  ST_HEIGHT ; 
 int /*<<< orphan*/  ST_WIDTH ; 
 int /*<<< orphan*/  ST_X ; 
 int /*<<< orphan*/  ST_Y ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  faceback ; 
 scalar_t__ netgame ; 
 int /*<<< orphan*/  sbar ; 
 scalar_t__ st_statusbaron ; 

void FUNC2(void)
{

    if (st_statusbaron)
    {
	FUNC1(ST_X, 0, BG, sbar);

	if (netgame)
	    FUNC1(ST_FX, 0, BG, faceback);

	FUNC0(ST_X, 0, BG, ST_WIDTH, ST_HEIGHT, ST_X, ST_Y, FG);
    }

}