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
typedef  int /*<<< orphan*/  gpointer ;
typedef  int /*<<< orphan*/  GtkButton ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FULL_VIEW ; 
 int /*<<< orphan*/  back_btn ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rootmenu ; 
 int /*<<< orphan*/  tree1_w ; 
 scalar_t__ tree2 ; 
 int /*<<< orphan*/  view_mode ; 

void FUNC4(GtkButton * button, gpointer user_data)
{
	view_mode = FULL_VIEW;
	FUNC2(tree1_w);
	if (tree2)
		FUNC1(tree2);
	FUNC0(&rootmenu);
	FUNC3(back_btn, FALSE);
}