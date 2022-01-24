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
typedef  int u32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int,...) ; 
 int /*<<< orphan*/  FUNC1 (int,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int,unsigned int) ; 
 scalar_t__ FUNC4 (int,int*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int FUNC6 (unsigned int,unsigned int,int,int) ; 
 int FUNC7 (unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * regname ; 

void FUNC8(u32 imm,unsigned int rt)
{
  u32 armval;
  if(FUNC4(imm,&armval)) {
    FUNC0("mov %s,#%d\n",regname[rt],imm);
    FUNC5(0xe3a00000|FUNC7(rt,0,0)|armval);
  }else if(FUNC4(~imm,&armval)) {
    FUNC0("mvn %s,#%d\n",regname[rt],imm);
    FUNC5(0xe3e00000|FUNC7(rt,0,0)|armval);
  }else if(imm<65536) {
    #ifndef HAVE_ARMv7
    FUNC0("mov %s,#%d\n",regname[rt],imm&0xFF00);
    FUNC5(0xe3a00000|FUNC6(rt,0,imm>>8,8));
    FUNC0("add %s,%s,#%d\n",regname[rt],regname[rt],imm&0xFF);
    FUNC5(0xe2800000|FUNC6(rt,rt,imm&0xff,0));
    #else
    emit_movw(imm,rt);
    #endif
  }else{
    #ifndef HAVE_ARMv7
    FUNC1(imm,rt);
    #else
    emit_movw(imm&0x0000FFFF,rt);
    emit_movt(imm&0xFFFF0000,rt);
    #endif
  }
}