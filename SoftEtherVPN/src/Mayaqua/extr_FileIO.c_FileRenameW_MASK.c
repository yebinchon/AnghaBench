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
typedef  int /*<<< orphan*/  tmp2 ;
typedef  int /*<<< orphan*/  tmp1 ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int MAX_SIZE ; 

bool FUNC2(wchar_t *old_name, wchar_t *new_name)
{
	wchar_t tmp1[MAX_SIZE];
	wchar_t tmp2[MAX_SIZE];
	// Validate arguments
	if (old_name == NULL || new_name == NULL)
	{
		return false;
	}

	FUNC1(tmp1, sizeof(tmp1), old_name);
	FUNC1(tmp2, sizeof(tmp2), new_name);

	return FUNC0(tmp1, tmp2);
}