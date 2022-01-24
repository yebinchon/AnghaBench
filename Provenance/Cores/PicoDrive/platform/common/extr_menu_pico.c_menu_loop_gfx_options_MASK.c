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
 int /*<<< orphan*/  MA_OPT_RENDERER ; 
 int /*<<< orphan*/  e_menu_gfx_options ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/ ** renderer_names ; 

__attribute__((used)) static int FUNC2(int id, int keys)
{
	static int sel = 0;

	FUNC0(e_menu_gfx_options, MA_OPT_RENDERER, renderer_names[0] != NULL);
	FUNC1(e_menu_gfx_options, &sel);

	return 0;
}