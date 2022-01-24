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
typedef  int uint16_t ;
struct TYPE_2__ {int button_state; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int FUNC2 (unsigned int) ; 
 TYPE_1__* wiimotes ; 

__attribute__((used)) static bool FUNC3(unsigned pad, uint16_t button_bit)
{
   int channel;
   if (!FUNC1(pad))
      return false;

   channel = FUNC2(pad);
   if(channel < 0)
      return false;

   return wiimotes[channel].button_state
      & (FUNC0(1) << button_bit);
}