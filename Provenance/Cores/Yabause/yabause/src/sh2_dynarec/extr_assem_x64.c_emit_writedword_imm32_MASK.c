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
 int /*<<< orphan*/  FUNC0 (char*,int,int) ; 
 scalar_t__ out ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

void FUNC5(int imm, int addr)
{
  FUNC0("movq $%x,%x\n",imm,addr);
  FUNC3(1,0,0,0);
  FUNC1(0xC7);
  FUNC2(0,5,0);
  FUNC4(addr-(int)out-8); // Note: rip-relative in 64-bit mode
  FUNC4(imm); // Note: This 32-bit value will be sign extended
}