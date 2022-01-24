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
typedef  int /*<<< orphan*/  pointer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ out ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 

void FUNC5(pointer addr,int imm)
{
  FUNC1(imm<128&&imm>=-127);
  FUNC0("cmpb $%d,%x\n",imm,addr);
  FUNC2(0x80);
  FUNC3(0,5,7);
  FUNC4(addr-(int)out-5); // Note: rip-relative in 64-bit mode
  FUNC2(imm);
}