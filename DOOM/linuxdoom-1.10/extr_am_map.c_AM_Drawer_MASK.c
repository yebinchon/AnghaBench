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
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  BACKGROUND ; 
 int /*<<< orphan*/  GRIDCOLORS ; 
 int /*<<< orphan*/  THINGCOLORS ; 
 int /*<<< orphan*/  THINGRANGE ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  XHAIRCOLORS ; 
 int /*<<< orphan*/  automapactive ; 
 int cheating ; 
 int /*<<< orphan*/  f_h ; 
 int /*<<< orphan*/  f_w ; 
 int /*<<< orphan*/  f_x ; 
 int /*<<< orphan*/  f_y ; 
 scalar_t__ grid ; 

void FUNC8 (void)
{
    if (!automapactive) return;

    FUNC0(BACKGROUND);
    if (grid)
	FUNC2(GRIDCOLORS);
    FUNC6();
    FUNC4();
    if (cheating==2)
	FUNC5(THINGCOLORS, THINGRANGE);
    FUNC1(XHAIRCOLORS);

    FUNC3();

    FUNC7(f_x, f_y, f_w, f_h);

}