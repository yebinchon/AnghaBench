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
 int /*<<< orphan*/  FUNC0 (char*,unsigned int,unsigned int) ; 

char* FUNC1(unsigned int pc, unsigned int cpu_type)
{
	static char buff[100];
	buff[0] = 0;
	FUNC0(buff, pc, cpu_type);
	return buff;
}