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
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,int,int) ; 
 scalar_t__* regname ; 

void FUNC4(int rs,int rt)
{
  if(rs==rt) {
    FUNC0("ror %%%s,8\n",regname[rt]+1);
    FUNC2(0x66);
    FUNC2(0xC1);
    FUNC3(3,rt,1);
    FUNC2(8);
  }
  else {
    FUNC1(rs,rt);
    FUNC4(rt,rt);
  }
}