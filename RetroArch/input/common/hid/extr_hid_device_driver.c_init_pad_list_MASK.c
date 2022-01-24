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
struct TYPE_3__ {unsigned int max_slot; scalar_t__ pad_list; } ;
typedef  TYPE_1__ hid_driver_instance_t ;

/* Variables and functions */
 unsigned int MAX_USERS ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (unsigned int) ; 

__attribute__((used)) static bool FUNC2(hid_driver_instance_t *instance, unsigned slots)
{
   if(!instance || slots > MAX_USERS)
      return false;

   if(instance->pad_list)
      return true;

   FUNC0("[hid]: initializing pad list...\n");
   instance->pad_list = FUNC1(slots);
   if(!instance->pad_list)
      return false;

   instance->max_slot = slots;

   return true;
}