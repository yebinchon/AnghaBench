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
typedef  scalar_t__ uint8_t ;
struct TYPE_2__ {scalar_t__ type; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  kpad_driver ; 
 TYPE_1__* wiimotes ; 

__attribute__((used)) static void FUNC4(unsigned channel, uint8_t device_type)
{
   if (wiimotes[channel].type != device_type)
   {
      int slot;

      FUNC3(channel);
      slot = FUNC1(channel);

      if(slot < 0)
      {
         FUNC0("Couldn't get a slot for this remote.\n");
         return;
      }

      wiimotes[channel].type = device_type;
      FUNC2(slot, &kpad_driver);
   }
}