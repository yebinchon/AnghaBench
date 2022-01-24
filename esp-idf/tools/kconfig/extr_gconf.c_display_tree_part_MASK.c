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
 scalar_t__ SINGLE_VIEW ; 
 scalar_t__ SPLIT_VIEW ; 
 int /*<<< orphan*/  browsed ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ tree2 ; 
 int /*<<< orphan*/  tree2_w ; 
 scalar_t__ view_mode ; 

__attribute__((used)) static void FUNC4(void)
{
	if (tree2)
		FUNC2(tree2);
	if (view_mode == SINGLE_VIEW)
		FUNC1(current);
	else if (view_mode == SPLIT_VIEW)
		FUNC1(browsed);
	FUNC3(FUNC0(tree2_w));
}