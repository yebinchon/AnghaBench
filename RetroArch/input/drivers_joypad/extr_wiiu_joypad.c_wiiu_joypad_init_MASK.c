#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  max_slot; int /*<<< orphan*/  pad_list; } ;
struct TYPE_7__ {int /*<<< orphan*/  (* init ) (void*) ;} ;
struct TYPE_6__ {int /*<<< orphan*/  (* init ) (void*) ;} ;
struct TYPE_5__ {int /*<<< orphan*/  (* init ) (void*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  MAX_USERS ; 
 TYPE_4__ hid_instance ; 
 TYPE_3__ hidpad_driver ; 
 TYPE_2__ kpad_driver ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ready ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 int /*<<< orphan*/  wiiu_pad_connection_listener ; 
 TYPE_1__ wpad_driver ; 

__attribute__((used)) static bool FUNC5(void* data)
{
   FUNC1(&wiiu_pad_connection_listener);
   hid_instance.pad_list = FUNC0(MAX_USERS);
   hid_instance.max_slot = MAX_USERS;

   wpad_driver.init(data);
   kpad_driver.init(data);
#ifdef WIIU_HID
   hidpad_driver.init(data);
#endif

   ready = true;
   (void)data;

   return true;
}