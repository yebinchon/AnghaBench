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
typedef  int /*<<< orphan*/  ITEM ;
typedef  int /*<<< orphan*/  FOLDER ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ITEM_TYPE_STRING ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

ITEM *FUNC2(FOLDER *f, char *name, wchar_t *str)
{
	// Validate arguments
	if (f == NULL || name == NULL || str == NULL)
	{
		return NULL;
	}

	return FUNC0(f, name, ITEM_TYPE_STRING, str, FUNC1(str));
}