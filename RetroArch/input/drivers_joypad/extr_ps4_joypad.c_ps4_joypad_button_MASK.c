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
typedef  int uint16_t ;

/* Variables and functions */
 unsigned int PS4_MAX_ORBISPADS ; 
 int FUNC0 (int) ; 
 int* pad_state ; 

__attribute__((used)) static bool FUNC1(unsigned port_num, uint16_t joykey)
{
   if (port_num >= PS4_MAX_ORBISPADS)
      return false;
   return (pad_state[port_num] & (FUNC0(1) << joykey));
}