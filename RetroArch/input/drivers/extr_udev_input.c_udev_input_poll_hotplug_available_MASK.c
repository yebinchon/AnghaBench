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
struct udev_monitor {int dummy; } ;
struct pollfd {int events; int revents; int /*<<< orphan*/  fd; } ;

/* Variables and functions */
 int POLLIN ; 
 int FUNC0 (struct pollfd*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct udev_monitor*) ; 

__attribute__((used)) static bool FUNC2(struct udev_monitor *dev)
{
   struct pollfd fds;

   fds.fd      = FUNC1(dev);
   fds.events  = POLLIN;
   fds.revents = 0;

   return (FUNC0(&fds, 1, 0) == 1) && (fds.revents & POLLIN);
}