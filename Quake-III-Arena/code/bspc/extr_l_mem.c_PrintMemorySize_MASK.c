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
 int /*<<< orphan*/  FUNC0 (char*,...) ; 

void FUNC1(unsigned long size)
{
	unsigned long number1, number2, number3;
	number1 = size >> 20;
	number2 = (size & 0xFFFFF) >> 10;
	number3 = (size & 0x3FF);
	if (number1) FUNC0("%ld MB", number1);
	if (number1 && number2) FUNC0(" and ");
	if (number2) FUNC0("%ld KB", number2);
	if (number2 && number3) FUNC0(" and ");
	if (number3) FUNC0("%ld bytes", number3);
}