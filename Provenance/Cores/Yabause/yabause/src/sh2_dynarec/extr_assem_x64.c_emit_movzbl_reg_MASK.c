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
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 scalar_t__* regname ; 

void FUNC4(int rs, int rt)
{
  if(rs<4&&rt<8) {
    FUNC0("movzbl %%%s,%%%s\n",regname[rs]+1,regname[rt]);
    FUNC1(0x0F);
    FUNC1(0xB6);
    FUNC2(3,rs,rt);
  }
  else {
    FUNC0("movzbl %%%s,%%%s\n",regname[rs]+1,regname[rt]);
    FUNC3(0,rt>>3,0,rs>>3);
    FUNC1(0x0F);
    FUNC1(0xB6);
    FUNC2(3,rs,rt);
  }
}