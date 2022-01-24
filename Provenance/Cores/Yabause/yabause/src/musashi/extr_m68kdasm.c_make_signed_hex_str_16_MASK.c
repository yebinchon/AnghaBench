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
typedef  int uint ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,...) ; 

__attribute__((used)) static char* FUNC1(uint val)
{
	static char str[20];

	val &= 0xffff;

	if(val == 0x8000)
		FUNC0(str, "-$8000");
	else if(val & 0x8000)
		FUNC0(str, "-$%x", (0-val) & 0x7fff);
	else
		FUNC0(str, "$%x", val & 0x7fff);

	return str;
}