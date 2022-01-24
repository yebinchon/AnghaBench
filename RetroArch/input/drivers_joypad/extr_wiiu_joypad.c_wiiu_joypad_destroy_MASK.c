#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  (* destroy ) () ;} ;
struct TYPE_5__ {int /*<<< orphan*/  (* destroy ) () ;} ;
struct TYPE_4__ {int /*<<< orphan*/  (* destroy ) () ;} ;

/* Variables and functions */
 TYPE_3__ hidpad_driver ; 
 TYPE_2__ kpad_driver ; 
 int ready ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 TYPE_1__ wpad_driver ; 

__attribute__((used)) static void FUNC3(void)
{
   ready = false;

   wpad_driver.destroy();
   kpad_driver.destroy();
#ifdef WIIU_HID
   hidpad_driver.destroy();
#endif
}