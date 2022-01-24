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
typedef  int /*<<< orphan*/  pid_t ;
typedef  int /*<<< orphan*/  Window ;
typedef  int /*<<< orphan*/  Display ;

/* Variables and functions */
 int /*<<< orphan*/  False ; 
 int /*<<< orphan*/  PropModeReplace ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  XA_CARDINAL ; 
 int /*<<< orphan*/  XA_STRING ; 
 int /*<<< orphan*/  XA_WM_CLIENT_MACHINE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  _SC_HOST_NAME_MAX ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int FUNC4 (char*,long) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ FUNC6 (long) ; 
 int FUNC7 (char*) ; 
 long FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(Display *dpy, Window win)
{
    long scret     = 0;
    char *hostname = NULL;
    pid_t pid      = FUNC5();

    FUNC1(dpy, win, FUNC2(dpy, "_NET_WM_PID", False),
        XA_CARDINAL, 32, PropModeReplace, (unsigned char *)&pid, 1);

    errno = 0;
    if ((scret = FUNC8(_SC_HOST_NAME_MAX)) == -1 && errno)
        return;
    if ((hostname = (char*)FUNC6(scret + 1)) == NULL)
        return;

    if (FUNC4(hostname, scret + 1) == -1)
        FUNC0("Failed to get hostname.\n");
    else
    {
        FUNC1(dpy, win, XA_WM_CLIENT_MACHINE, XA_STRING, 8,
            PropModeReplace, (unsigned char *)hostname, FUNC7(hostname));
    }
    FUNC3(hostname);
}