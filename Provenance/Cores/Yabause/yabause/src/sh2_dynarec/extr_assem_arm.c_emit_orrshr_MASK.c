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
 int FUNC3 (unsigned int,unsigned int,unsigned int) ; 
 int /*<<< orphan*/ * regname ; 

void FUNC4(unsigned int rs,unsigned int shift,unsigned int rt)
{
  FUNC1(rs<16);
  FUNC1(rt<16);
  FUNC1(shift<16);
  FUNC0("orr %s,%s,%s,lsr %s\n",regname[rt],regname[rt],regname[rs],regname[shift]);
  FUNC2(0xe1800000|FUNC3(rt,rt,rs)|0x30|(shift<<8));
}