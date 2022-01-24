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
typedef  scalar_t__ UINT ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 

UINT FUNC2(BYTE *u, UINT u_size)
{
	// Validate arguments
	if (u == NULL)
	{
		return 0;
	}
	if (u_size == 0)
	{
		u_size = FUNC0((char *)u);
	}

	return (FUNC1(u, u_size) + 1) * sizeof(wchar_t);
}