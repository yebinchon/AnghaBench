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
typedef  scalar_t__ pid_t ;
typedef  int /*<<< orphan*/ * HANDLE ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  EPERM ; 
 int ERROR_ACCESS_DENIED ; 
 int /*<<< orphan*/  ESRCH ; 
 scalar_t__ FUNC1 () ; 
 int FUNC2 () ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PROCESS_QUERY_INFORMATION ; 
 int /*<<< orphan*/  PTW32_FALSE ; 
 int SCHED_OTHER ; 
 int /*<<< orphan*/  errno ; 

int
FUNC4 (pid_t pid)
{
  /*
   * Win32 only has one policy which we call SCHED_OTHER.
   * However, we try to provide other valid side-effects
   * such as EPERM and ESRCH errors.
   */
  if (0 != pid)
    {
      int selfPid = (int) FUNC1 ();

      if (pid != selfPid)
	{
	  HANDLE h =
	    FUNC3 (PROCESS_QUERY_INFORMATION, PTW32_FALSE, (DWORD) pid);

	  if (NULL == h)
	    {
	      errno =
		(FUNC2 () ==
		 (0xFF & ERROR_ACCESS_DENIED)) ? EPERM : ESRCH;
	      return -1;
	    }
	  else
	    FUNC0(h);
	}
    }

  return SCHED_OTHER;
}