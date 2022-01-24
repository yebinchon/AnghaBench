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
 int /*<<< orphan*/  HOST_TEMPREG ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int,int*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int FUNC6 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * regname ; 

void FUNC7(int rs,int imm)
{
  u32 armval;
  if(FUNC4(imm,&armval)) {
    FUNC0("cmp %s,#%d\n",regname[rs],imm);
    FUNC5(0xe3500000|FUNC6(0,rs,0)|armval);
  }else if(FUNC4(-imm,&armval)) {
    FUNC0("cmn %s,#%d\n",regname[rs],imm);
    FUNC5(0xe3700000|FUNC6(0,rs,0)|armval);
  }else if(imm>0) {
    FUNC1(imm<65536);
    #ifndef HAVE_ARMv7
    FUNC2(imm,HOST_TEMPREG);
    #else
    emit_movw(imm,HOST_TEMPREG);
    #endif
    FUNC0("cmp %s,r14\n",regname[rs]);
    FUNC5(0xe1500000|FUNC6(0,rs,HOST_TEMPREG));
  }else{
    FUNC1(imm>-65536);
    #ifndef HAVE_ARMv7
    FUNC2(-imm,HOST_TEMPREG);
    #else
    emit_movw(-imm,HOST_TEMPREG);
    #endif
    FUNC0("cmn %s,r14\n",regname[rs]);
    FUNC5(0xe1700000|FUNC6(0,rs,HOST_TEMPREG));
  }
}