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
typedef  int /*<<< orphan*/  tz ;
typedef  int /*<<< orphan*/  tv ;
struct timezone {int tz_minuteswest; } ;
struct timeval {int tz_minuteswest; } ;

/* Variables and functions */
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct timezone*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct timezone*,struct timezone*) ; 
 int timezone ; 
 int /*<<< orphan*/  FUNC3 () ; 

int FUNC4()
{
	int ret = 0;

#ifdef	OS_WIN32
	ret = GetCurrentTimezoneWin32();
#else	// OS_WIN32
	{
#if	defined(UNIX_MACOS) || defined(UNIX_BSD)
		struct timeval tv;
		struct timezone tz;

		Zero(&tv, sizeof(tv));
		Zero(&tz, sizeof(tz));

		gettimeofday(&tv, &tz); 

		ret = tz.tz_minuteswest;

#else	// defined(UNIX_MACOS) || defined(UNIX_BSD)
		FUNC3();

		ret = timezone / 60;
#endif	// defined(UNIX_MACOS) || defined(UNIX_BSD)
	}
#endif	// OS_WIN32

	return ret;
}