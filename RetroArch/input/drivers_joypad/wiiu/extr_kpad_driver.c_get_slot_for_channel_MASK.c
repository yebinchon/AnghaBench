#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {TYPE_1__* pad_list; } ;
struct TYPE_3__ {int connected; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int* channel_slot_map ; 
 TYPE_2__ hid_instance ; 
 int FUNC1 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC2(unsigned channel)
{
   int slot = FUNC1(hid_instance.pad_list);
   if(slot >= 0)
   {
      FUNC0("[kpad]: got slot %d\n", slot);
      channel_slot_map[channel]             = slot;
      hid_instance.pad_list[slot].connected = true;
   }

   return slot;
}