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
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int,...) ; 
 int /*<<< orphan*/  FUNC2 (int,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int,unsigned int) ; 
 scalar_t__ FUNC5 (int,int*) ; 
 scalar_t__ out ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int FUNC7 (unsigned int,int,int /*<<< orphan*/ ) ; 
 int* regname ; 

void FUNC8(int imm1,int imm2,unsigned int rt)
{
  u32 armval;
  if(FUNC5(imm2-imm1,&armval)) {
    FUNC2(imm1,rt);
    FUNC1("addne %s,%s,#%d\n",regname[rt],regname[rt],imm2-imm1);
    FUNC6(0x12800000|FUNC7(rt,rt,0)|armval);
  }else if(FUNC5(imm1-imm2,&armval)) {
    FUNC2(imm1,rt);
    FUNC1("subne %s,%s,#%d\n",regname[rt],regname[rt],imm1-imm2);
    FUNC6(0x12400000|FUNC7(rt,rt,0)|armval);
  }
  else {
    #ifndef HAVE_ARMv7
    FUNC2(imm1,rt);
    FUNC0((int)out,imm2);
    FUNC1("ldrne %s,pc+? [=%x]\n",regname[rt],imm2);
    FUNC6(0x15900000|FUNC7(rt,15,0));
    #else
    emit_movw(imm1&0x0000FFFF,rt);
    if((imm1&0xFFFF)!=(imm2&0xFFFF)) {
      assem_debug("movwne %s,#%d (0x%x)\n",regname[rt],imm2&0xFFFF,imm2&0xFFFF);
      output_w32(0x13000000|rd_rn_rm(rt,0,0)|(imm2&0xfff)|((imm2<<4)&0xf0000));
    }
    emit_movt(imm1&0xFFFF0000,rt);
    if((imm1&0xFFFF0000)!=(imm2&0xFFFF0000)) {
      assem_debug("movtne %s,#%d (0x%x)\n",regname[rt],imm2&0xffff0000,imm2&0xffff0000);
      output_w32(0x13400000|rd_rn_rm(rt,0,0)|((imm2>>16)&0xfff)|((imm2>>12)&0xf0000));
    }
    #endif
  }
}