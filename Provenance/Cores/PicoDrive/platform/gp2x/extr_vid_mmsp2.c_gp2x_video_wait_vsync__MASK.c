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
 unsigned short* memregs ; 
 int /*<<< orphan*/  FUNC0 (int) ; 

__attribute__((used)) static void FUNC1(void)
{
	unsigned short v = memregs[0x1182>>1];
	while (!((v ^ memregs[0x1182>>1]) & 0x10))
		FUNC0(1024);
}