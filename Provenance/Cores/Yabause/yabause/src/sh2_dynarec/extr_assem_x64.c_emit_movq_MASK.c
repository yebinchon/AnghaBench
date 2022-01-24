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
typedef  int u64 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 scalar_t__ out ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int* regname ; 

void FUNC7(u64 addr, int rt)
{
  if(addr-(u64)out+0x7FFFFFFA>0xFFFFFFFF) {
    FUNC1(addr-(u64)out+0x7FFFFFFA<0x100000000);
    //TODO: special eax case
    FUNC2(addr,rt);
    //FIXME
    FUNC0("mov (%%%s),%%%s\n",regname[rt],regname[rt]);
    FUNC3(0x8B);
    FUNC4(0,rt,rt);
    FUNC3(0xCC);//remove
  }
  else
  {
    FUNC0("movq %llx,%%%s\n",addr,regname[rt]);
    FUNC5(1,0,0,rt>>8);
    FUNC3(0x8B);
    FUNC4(0,5,rt);
    FUNC6(addr-(int)out-4); // Note: rip-relative in 64-bit mode
  }
}