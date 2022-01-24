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
struct TYPE_3__ {scalar_t__ ptr; } ;
typedef  TYPE_1__ iohidmanager_hid_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  kCFAllocatorDefault ; 
 int /*<<< orphan*/  kCFRunLoopDefaultMode ; 
 int /*<<< orphan*/  kIOHIDOptionsTypeNone ; 

__attribute__((used)) static int FUNC4(iohidmanager_hid_t *hid)
{
   if (!hid)
      return -1;
   if (hid->ptr) /* already initialized. */
      return 0;

   hid->ptr = FUNC1(kCFAllocatorDefault, kIOHIDOptionsTypeNone);

   if (!hid->ptr)
      return -1;

   FUNC3(hid->ptr, NULL);
   FUNC2(hid->ptr, FUNC0(),
         kCFRunLoopDefaultMode);
   return 0;
}