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
struct timeval {long tv_sec; int tv_usec; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (long) ; 
 int /*<<< orphan*/  FUNC1 (long) ; 
 int /*<<< orphan*/  FUNC2 (void*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct timeval*) ; 

void FUNC4(long ms)
{
#if defined(MSDOS)
  delay(ms);
#elif defined(WIN32)
  Sleep(ms);
#elif defined(HAVE_POLL_FINE)
  (void)poll((void *)0, 0, (int)ms);
#else
  struct timeval timeout;
  timeout.tv_sec = ms / 1000L;
  ms = ms % 1000L;
  timeout.tv_usec = (int)ms * 1000;
  FUNC3(0, NULL,  NULL, NULL, &timeout);
#endif
}