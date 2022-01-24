#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct pollfd {int events; int revents; int /*<<< orphan*/  fd; int /*<<< orphan*/  member_0; } ;
struct TYPE_2__ {int /*<<< orphan*/  dpy; int /*<<< orphan*/  fd; } ;
typedef  TYPE_1__ input_ctx_wayland_data_t ;

/* Variables and functions */
 int POLLERR ; 
 int POLLHUP ; 
 int POLLIN ; 
 int POLLOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (struct pollfd*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

void FUNC6(void *data)
{
   struct pollfd fd = {0};
   input_ctx_wayland_data_t *wl = (input_ctx_wayland_data_t*)data;

   FUNC4(wl->dpy);
   FUNC5(wl->dpy);

   fd.fd     = wl->fd;
   fd.events = POLLIN | POLLOUT | POLLERR | POLLHUP;

   if (FUNC2(&fd, 1, 0) > 0)
   {
      if (fd.revents & (POLLERR | POLLHUP))
      {
         FUNC0(wl->fd);
         FUNC1(1);
      }

      if (fd.revents & POLLIN)
         FUNC3(wl->dpy);
      if (fd.revents & POLLOUT)
         FUNC5(wl->dpy);
   }
}