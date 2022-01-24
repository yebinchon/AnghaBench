#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int usUsagePage; int usUsage; scalar_t__ hwndTarget; int /*<<< orphan*/  dwFlags; } ;
typedef  TYPE_1__ RAWINPUTDEVICE ;
typedef  scalar_t__ HWND ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RIDEV_REMOVE ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int,int) ; 

__attribute__((used)) static bool FUNC3(HWND window)
{
   RAWINPUTDEVICE rid;
   BOOL r;

   rid.dwFlags     = window ? 0 : RIDEV_REMOVE;
   rid.hwndTarget  = window;
   rid.usUsagePage = 0x01; /* generic desktop */
   rid.usUsage     = 0x06; /* keyboard */

   r               = FUNC2(&rid, 1, sizeof(RAWINPUTDEVICE));

   if (!r)
   {
      FUNC1("[WINRAW]: RegisterRawInputDevices failed with error %lu.\n", FUNC0());
      return false;
   }

   return true;
}