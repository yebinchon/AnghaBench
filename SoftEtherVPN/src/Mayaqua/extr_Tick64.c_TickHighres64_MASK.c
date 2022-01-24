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
typedef  int /*<<< orphan*/  UINT64 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 float FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 

UINT64 FUNC3()
{

#ifdef	OS_WIN32

	return (UINT64)(MsGetHiResTimeSpan(MsGetHiResCounter()) * 1000.0f);

#else	// OS_WIN32

	return FUNC2();

#endif	// OS_WIN32

}