#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct timeval {int dummy; } ;
typedef  int /*<<< orphan*/  fd_set ;
struct TYPE_3__ {int /*<<< orphan*/  display; } ;
struct TYPE_4__ {TYPE_1__ x11; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ EINTR ; 
 int /*<<< orphan*/  FUNC1 (int const,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_2__ _glfw ; 
 scalar_t__ errno ; 
 int FUNC3 (int const,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct timeval*) ; 

void FUNC4(struct timeval* timeout)
{
    fd_set fds;
    int result;
    const int fd = FUNC0(_glfw.x11.display);

    FUNC2(&fds);
    FUNC1(fd, &fds);

    // NOTE: We use select instead of an X function like XNextEvent, as the
    //       wait inside those are guarded by the mutex protecting the display
    //       struct, locking out other threads from using X (including GLX)
    // NOTE: Only retry on EINTR if there is no timeout, as select is not
    //       required to update it for the time elapsed
    // TODO: Update timeout value manually
    do
    {
        result = FUNC3(fd + 1, &fds, NULL, NULL, timeout);
    }
    while (result == -1 && errno == EINTR && timeout == NULL);
}