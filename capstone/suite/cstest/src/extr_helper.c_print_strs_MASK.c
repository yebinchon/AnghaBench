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
 int /*<<< orphan*/  FUNC0 (char*,int,...) ; 

void FUNC1(char **list_str, int size)
{
	int i;

	FUNC0("[+] Debug %d strings:\n", size);
	for (i = 0; i < size; ++i)
		FUNC0("String %d'th: %s\n", i+1, list_str[i]);
}