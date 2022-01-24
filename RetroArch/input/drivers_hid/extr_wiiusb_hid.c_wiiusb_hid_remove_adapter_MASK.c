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
struct wiiusb_adapter {scalar_t__ handle; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (struct wiiusb_adapter*) ; 

__attribute__((used)) static int FUNC2(struct wiiusb_adapter *adapter)
{
   if (!adapter)
      return -1;

   if (adapter->handle > 0)
      FUNC0(&adapter->handle);

   FUNC1(adapter);

   return 0;
}