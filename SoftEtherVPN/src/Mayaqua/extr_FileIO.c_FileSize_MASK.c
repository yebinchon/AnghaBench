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
typedef  unsigned long long UINT64 ;
typedef  unsigned long long UINT ;
typedef  int /*<<< orphan*/  IO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

UINT FUNC1(IO *o)
{
	UINT64 size = (UINT)(FUNC0(o));

	if (size >= 4294967296ULL)
	{
		size = 4294967295ULL;
	}

	return (UINT)size;
}