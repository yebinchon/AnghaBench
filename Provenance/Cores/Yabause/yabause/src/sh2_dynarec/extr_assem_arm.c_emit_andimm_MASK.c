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
 int HOST_TEMPREG ; 
 int /*<<< orphan*/  FUNC0 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ FUNC4 (int,int*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int FUNC6 (int,int,int,int) ; 
 int FUNC7 (int,int,int) ; 
 int /*<<< orphan*/ * regname ; 

void FUNC8(int rs,int imm,int rt)
{
  u32 armval;
  if(imm==0) {
    FUNC3(rt);
  }else if(FUNC4(imm,&armval)) {
    FUNC0("and %s,%s,#%d\n",regname[rt],regname[rs],imm);
    FUNC5(0xe2000000|FUNC7(rt,rs,0)|armval);
  }else if(FUNC4(~imm,&armval)) {
    FUNC0("bic %s,%s,#%d\n",regname[rt],regname[rs],imm);
    FUNC5(0xe3c00000|FUNC7(rt,rs,0)|armval);
  }else if(imm==65535) {
    #ifndef HAVE_ARMv6
    FUNC0("bic %s,%s,#FF000000\n",regname[rt],regname[rs]);
    FUNC5(0xe3c00000|FUNC7(rt,rs,0)|0x4FF);
    FUNC0("bic %s,%s,#00FF0000\n",regname[rt],regname[rt]);
    FUNC5(0xe3c00000|FUNC7(rt,rt,0)|0x8FF);
    #else
    assem_debug("uxth %s,%s\n",regname[rt],regname[rs]);
    output_w32(0xe6ff0070|rd_rn_rm(rt,0,rs));
    #endif
  }else{
    FUNC1(imm>0&&imm<65535);
    #ifndef HAVE_ARMv7
    FUNC0("mov r14,#%d\n",imm&0xFF00);
    FUNC5(0xe3a00000|FUNC6(HOST_TEMPREG,0,imm>>8,8));
    FUNC0("add r14,r14,#%d\n",imm&0xFF);
    FUNC5(0xe2800000|FUNC6(HOST_TEMPREG,HOST_TEMPREG,imm&0xff,0));
    #else
    emit_movw(imm,HOST_TEMPREG);
    #endif
    FUNC0("and %s,%s,r14\n",regname[rt],regname[rs]);
    FUNC5(0xe0000000|FUNC7(rt,rs,HOST_TEMPREG));
  }
}