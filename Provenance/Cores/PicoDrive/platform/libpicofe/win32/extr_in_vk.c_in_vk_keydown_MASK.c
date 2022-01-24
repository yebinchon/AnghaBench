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

/* Variables and functions */
 int FUNC0 (int*) ; 
 int* in_vk_keys_down ; 

void FUNC1(int kc)
{
	int i;

	// search
	for (i = 0; i < FUNC0(in_vk_keys_down); i++)
		if (in_vk_keys_down[i] == kc)
			return;

	// do
	for (i = 0; i < FUNC0(in_vk_keys_down); i++) {
		if (in_vk_keys_down[i] == 0) {
			in_vk_keys_down[i] = kc;
			return;
		}
	}
}