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
typedef  int s32 ;
typedef  int USBKeyboard_led ;
struct TYPE_2__ {int leds; } ;

/* Variables and functions */
 TYPE_1__* _kbd ; 
 scalar_t__ FUNC0 () ; 

s32 FUNC1(const USBKeyboard_led led)
{
	if (!_kbd)
		return -1;

	_kbd->leds = _kbd->leds ^ (1 << led);

	if (FUNC0() < 0)
		return -2;

	return 1;
}