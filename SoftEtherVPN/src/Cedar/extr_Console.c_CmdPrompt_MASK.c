#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wchar_t ;
struct TYPE_4__ {int /*<<< orphan*/ * (* ReadLine ) (TYPE_1__*,int /*<<< orphan*/ *,int) ;} ;
typedef  TYPE_1__ CONSOLE ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (char*) ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_1__*,int /*<<< orphan*/ *,int) ; 

wchar_t *FUNC2(CONSOLE *c, void *param)
{
	wchar_t *p = (param == NULL) ? FUNC0("CMD_PROMPT") : (wchar_t *)param;

	return c->ReadLine(c, p, true);
}