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
 int /*<<< orphan*/  DM_640x480 ; 
 int /*<<< orphan*/  PM_RGB565 ; 
 int /*<<< orphan*/  PVR_LIST_OP_POLY ; 
 int /*<<< orphan*/  PVR_LIST_PT_POLY ; 
 int /*<<< orphan*/  PVR_LIST_TR_POLY ; 
 int /*<<< orphan*/  dmadone ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tex_space ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(void)   {
    FUNC1(PVR_LIST_OP_POLY, NULL, 0);
    FUNC1(PVR_LIST_TR_POLY, NULL, 0);
    FUNC1(PVR_LIST_PT_POLY, NULL, 0);

    FUNC0(tex_space);
    FUNC3(&dmadone);

    FUNC2();
    FUNC4(DM_640x480, PM_RGB565);
}