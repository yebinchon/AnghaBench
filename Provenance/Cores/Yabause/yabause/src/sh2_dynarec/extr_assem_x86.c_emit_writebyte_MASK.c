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
 int EAX ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/ ** regname ; 

void FUNC5(int rt, int addr)
{
  if(rt<4) {
    FUNC0("movb %%%cl,%x\n",regname[rt][1],addr);
    FUNC2(0x88);
    FUNC3(0,5,rt);
    FUNC4(addr);
  }
  else
  {
    FUNC1(EAX,rt);
    FUNC5(EAX,addr);
    FUNC1(EAX,rt);
  }
}