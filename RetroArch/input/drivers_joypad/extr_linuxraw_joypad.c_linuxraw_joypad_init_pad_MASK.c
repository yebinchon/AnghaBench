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
struct linuxraw_joypad {char const* fd; char* ident; } ;
struct TYPE_2__ {struct linuxraw_joypad* ptr; } ;
struct epoll_event {TYPE_1__ data; int /*<<< orphan*/  events; } ;
typedef  int /*<<< orphan*/  input_device_names ;

/* Variables and functions */
 int /*<<< orphan*/  EPOLLIN ; 
 int /*<<< orphan*/  EPOLL_CTL_ADD ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int O_NONBLOCK ; 
 int O_RDONLY ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,char const*) ; 
 int /*<<< orphan*/  R_OK ; 
 scalar_t__ FUNC3 (char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,struct epoll_event*) ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC5 (char const*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  linuxraw_epoll ; 
 char const* FUNC6 (char const*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC8(const char *path,
      struct linuxraw_joypad *pad)
{
   /* Device can have just been created, but not made accessible (yet).
      IN_ATTRIB will signal when permissions change. */
   if (FUNC3(path, R_OK) < 0)
      return false;
   if (pad->fd >= 0)
      return false;

   pad->fd     = FUNC6(path, O_RDONLY | O_NONBLOCK);
   *pad->ident = '\0';

   if (pad->fd >= 0)
   {
      struct epoll_event event;

      if (FUNC5(pad->fd,
               FUNC0(sizeof(input_device_names[0])), pad->ident) >= 0)
      {
         FUNC2("[Device]: Found pad: %s on %s.\n", pad->ident, path);
      }
      else
         FUNC1("[Device]: Didn't find ident of %s.\n", path);

      event.events             = EPOLLIN;
      event.data.ptr           = pad;

      if (FUNC4(linuxraw_epoll, EPOLL_CTL_ADD, pad->fd, &event) < 0)
      {
         FUNC1("Failed to add FD (%d) to epoll list (%s).\n",
               pad->fd, FUNC7(errno));
      }
      else
         return true;
   }

   FUNC1("[Device]: Failed to open pad %s (error: %s).\n",
         path, FUNC7(errno));
   return false;
}