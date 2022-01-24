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
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/ * regname ; 

void FUNC3(unsigned int rs1, unsigned int rs2, unsigned int hi, unsigned int lo)
{
  FUNC0("umull %s, %s, %s, %s\n",regname[lo],regname[hi],regname[rs1],regname[rs2]);
  FUNC1(rs1<16);
  FUNC1(rs2<16);
  FUNC1(hi<16);
  FUNC1(lo<16);
  FUNC1(hi!=rs1&&hi!=rs2);
  FUNC1(lo!=rs1&&lo!=rs2);
  FUNC2(0xe0800090|(hi<<16)|(lo<<12)|(rs2<<8)|rs1);
}