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
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int,int,int) ; 
 int /*<<< orphan*/ * regname ; 

void FUNC3(int rs1,int rs2,int rt)
{
  FUNC0("subcs %s,%s,%s\n",regname[rt],regname[rs1],regname[rs2]);
  FUNC1(0x20400000|FUNC2(rt,rs1,rs2));
}