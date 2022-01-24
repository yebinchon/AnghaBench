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
typedef  int /*<<< orphan*/  DIRLIST ;
typedef  int /*<<< orphan*/  COMPARE ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (char*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

DIRLIST *FUNC3(char *dirname, COMPARE *compare)
{
	wchar_t *dirname_w = FUNC0(dirname);
	DIRLIST *ret = FUNC1(dirname_w, compare);

	FUNC2(dirname_w);

	return ret;
}