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
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__,int) ; 
 scalar_t__ out ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__* regname ; 

void FUNC4(int rt, int addr)
{
  FUNC0("movw %%%s,%x\n",regname[rt]+1,addr);
  FUNC1(0x66);
  FUNC1(0x89);
  FUNC2(0,5,rt);
  FUNC3(addr-(int)out-4); // Note: rip-relative in 64-bit mode
}