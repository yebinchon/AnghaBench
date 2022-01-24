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
 int CCREG ; 
 int /*<<< orphan*/  FP ; 
 int MMREG ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  dynarec_local ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int /*<<< orphan*/  master_cc ; 
 scalar_t__ master_reg ; 
 scalar_t__ memory_map ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * regname ; 
 scalar_t__ slave ; 
 int /*<<< orphan*/  slave_cc ; 
 scalar_t__ slave_reg ; 

void FUNC5(int r, int hr)
{
  if(r==MMREG)
    FUNC2(((int)memory_map-(int)&dynarec_local)>>2,hr);
  else {
    int addr=(slave?(int)slave_reg:(int)master_reg)+(r<<2);
    if(r==CCREG) addr=slave?(int)&slave_cc:(int)&master_cc;
    u32 offset = addr-(u32)&dynarec_local;
    FUNC1(offset<4096);
    FUNC0("ldr %s,fp+%d\n",regname[hr],offset);
    FUNC3(0xe5900000|FUNC4(hr,FP,0)|offset);
  }
}