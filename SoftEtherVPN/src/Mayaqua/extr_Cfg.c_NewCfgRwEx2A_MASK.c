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
typedef  int /*<<< orphan*/  wchar_t ;
typedef  int /*<<< orphan*/  FOLDER ;
typedef  int /*<<< orphan*/  CFG_RW ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 

CFG_RW *FUNC3(FOLDER **root, char *cfg_name_a, bool dont_backup, char *template_name_a)
{
	CFG_RW *ret;
	wchar_t *cfg_name_w = FUNC0(cfg_name_a);
	wchar_t *template_name_w = FUNC0(template_name_a);

	ret = FUNC2(root, cfg_name_w, dont_backup, template_name_w);

	FUNC1(cfg_name_w);
	FUNC1(template_name_w);

	return ret;
}