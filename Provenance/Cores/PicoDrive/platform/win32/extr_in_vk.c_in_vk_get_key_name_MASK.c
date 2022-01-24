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
 int IN_VK_NKEYS ; 
 char** in_vk_keys ; 

__attribute__((used)) static const char *FUNC0(int keycode)
{
	const char *name = NULL;
	static char buff[4];

	if ('A' <= keycode && keycode < 'Z') {
		buff[0] = keycode;
		buff[1] = 0;
		return buff;
	}

	if (0 <= keycode && keycode < IN_VK_NKEYS)
		name = in_vk_keys[keycode];
	if (name == NULL)
		name = "Unkn";
	
	return name;
}