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
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (unsigned int,unsigned int,unsigned int) ; 
 int /*<<< orphan*/ * regname ; 

void FUNC3(unsigned int rs1,unsigned int rs2,unsigned int shift,unsigned int rt)
{
  FUNC0("bic %s,%s,%s lsl %s\n",regname[rt],regname[rs1],regname[rs2],regname[shift]);
  FUNC1(0xe1C00000|FUNC2(rt,rs1,rs2)|0x10|(shift<<8));
}