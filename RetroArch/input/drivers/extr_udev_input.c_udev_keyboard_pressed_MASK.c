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
typedef  int /*<<< orphan*/  udev_input_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int* rarch_keysym_lut ; 
 int /*<<< orphan*/  udev_key_state ; 

__attribute__((used)) static bool FUNC1(udev_input_t *udev, unsigned key)
{
   int bit = rarch_keysym_lut[key];
   return FUNC0(udev_key_state,bit);
}