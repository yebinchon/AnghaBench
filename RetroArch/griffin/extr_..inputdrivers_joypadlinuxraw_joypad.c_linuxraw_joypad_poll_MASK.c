#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  char uint8_t ;
struct linuxraw_joypad {int dummy; } ;
struct inotify_event {scalar_t__ name; int mask; scalar_t__ len; } ;
struct TYPE_5__ {scalar_t__ ptr; } ;
struct epoll_event {TYPE_1__ data; } ;
typedef  int /*<<< orphan*/  path ;
struct TYPE_7__ {int /*<<< orphan*/  ident; } ;
struct TYPE_6__ {int fd; char* ident; int /*<<< orphan*/  axes; scalar_t__ buttons; } ;

/* Variables and functions */
 scalar_t__ EINTR ; 
 int IN_ATTRIB ; 
 int IN_CREATE ; 
 int IN_DELETE ; 
 int MAX_USERS ; 
 int NAME_MAX ; 
 int PATH_MAX_LENGTH ; 
 scalar_t__ FUNC0 (int,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct epoll_event*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (unsigned int,char*) ; 
 int /*<<< orphan*/  linuxraw_epoll ; 
 scalar_t__ linuxraw_hotplug ; 
 int /*<<< orphan*/  linuxraw_inotify ; 
 TYPE_4__ linuxraw_joypad ; 
 scalar_t__ FUNC6 (char*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (unsigned int) ; 
 TYPE_2__* linuxraw_pads ; 
 int /*<<< orphan*/  FUNC8 (struct linuxraw_joypad*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC10 (int /*<<< orphan*/ ,char*,size_t) ; 
 int /*<<< orphan*/  FUNC11 (char*,int,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 scalar_t__ FUNC13 (scalar_t__,char*) ; 
 unsigned int FUNC14 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC15(void)
{
   int i, ret;
   struct epoll_event events[MAX_USERS + 1];

retry:
   ret = FUNC2(linuxraw_epoll, events, MAX_USERS + 1, 0);
   if (ret < 0 && errno == EINTR)
      goto retry;

   for (i = 0; i < ret; i++)
   {
      struct linuxraw_joypad *ptr = (struct linuxraw_joypad*)
         events[i].data.ptr;

      if (ptr)
         FUNC8(ptr);
      else
      {
         /* handle plugged pad */
         int j, rc;
         size_t event_size  = sizeof(struct inotify_event) + NAME_MAX + 1;
         uint8_t *event_buf = (uint8_t*)FUNC0(1, event_size);

         while ((rc = FUNC10(linuxraw_inotify, event_buf, event_size)) >= 0)
         {
            struct inotify_event *event = (struct inotify_event*)&event_buf[0];

            event_buf[rc-1] = '\0';

            /* Can read multiple events in one read() call. */

            for (j = 0; j < rc; j += event->len + sizeof(struct inotify_event))
            {
               unsigned idx;

               event = (struct inotify_event*)&event_buf[j];

               if (FUNC13(event->name, "js") != event->name)
                  continue;

               idx = FUNC14(event->name + 2, NULL, 0);
               if (idx >= MAX_USERS)
                  continue;

               if (event->mask & IN_DELETE)
               {
                  if (linuxraw_pads[idx].fd >= 0)
                  {
                     if (linuxraw_hotplug)
                        FUNC5(idx,
                              linuxraw_pads[idx].ident);

                     FUNC1(linuxraw_pads[idx].fd);
                     linuxraw_pads[idx].buttons = 0;
                     FUNC9(linuxraw_pads[idx].axes, 0,
                           sizeof(linuxraw_pads[idx].axes));
                     linuxraw_pads[idx].fd = -1;
                     *linuxraw_pads[idx].ident = '\0';

                     FUNC4(
                           NULL,
                           NULL,
                           FUNC7(idx),
                           idx,
                           0,
                           0);
                  }
               }
               /* Sometimes, device will be created before
                * access to it is established. */
               else if (event->mask & (IN_CREATE | IN_ATTRIB))
               {
                  char path[PATH_MAX_LENGTH];

                  path[0] = '\0';

                  FUNC11(path, sizeof(path), "/dev/input/%s", event->name);

                  if (     !FUNC12(linuxraw_pads[idx].ident)
                        && FUNC6(path, &linuxraw_pads[idx]))
                     FUNC4(
                           linuxraw_pads[idx].ident,
                           NULL,
                           linuxraw_joypad.ident,
                           idx,
                           0,
                           0);
               }
            }
         }

         FUNC3(event_buf);
      }
   }
}