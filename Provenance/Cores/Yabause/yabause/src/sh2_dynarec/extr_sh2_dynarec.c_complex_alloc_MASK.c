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
struct regstat {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EAX ; 
 int /*<<< orphan*/  EBP ; 
 int /*<<< orphan*/  EBX ; 
 int /*<<< orphan*/  ECX ; 
 int /*<<< orphan*/  EDI ; 
 int /*<<< orphan*/  EDX ; 
 int /*<<< orphan*/  HOST_REGS ; 
 int /*<<< orphan*/  MACH ; 
 int /*<<< orphan*/  MACL ; 
 int /*<<< orphan*/  SR ; 
 int /*<<< orphan*/  FUNC0 (struct regstat*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct regstat*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct regstat*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct regstat*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct regstat*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * minimum_free_regs ; 
 int* opcode ; 
 int* opcode2 ; 
 int /*<<< orphan*/ * rs1 ; 
 int /*<<< orphan*/ * rs2 ; 

void FUNC6(struct regstat *current,int i)
{
  if(opcode[i]==3&&opcode2[i]==4) { // DIV1
    #if defined(__i386__) || defined(__x86_64__)
    FUNC2(current,i,rs1[i],ECX);
    FUNC2(current,i,rs2[i],EAX);
    FUNC2(current,i,SR,EDX);
    FUNC0(current,i);
    #else
    #if defined(__arm__)
    alloc_arm_reg(current,i,rs1[i],1);
    alloc_arm_reg(current,i,rs2[i],0);
    alloc_arm_reg(current,i,SR,2);
    alloc_all(current,i);
    #else
    // FIXME
    assert(0);
    #endif
    #endif
    FUNC5(current,rs2[i]);
    FUNC5(current,SR);
  }
  if(opcode[i]==0&&opcode2[i]==15) { // MAC.L
    #if defined(__i386__) || defined(__x86_64__)
    FUNC2(current,i,rs1[i],EBP);
    FUNC2(current,i,rs2[i],EDI);
    FUNC2(current,i,SR,EBX);
    FUNC0(current,i);
    FUNC2(current,i,MACL,EAX);
    FUNC2(current,i,MACH,EDX);
    #else
    #if defined(__arm__)
    alloc_arm_reg(current,i,rs1[i],5);
    alloc_arm_reg(current,i,rs2[i],6);
    alloc_arm_reg(current,i,SR,4);
    alloc_all(current,i);
    alloc_arm_reg(current,i,MACL,0);
    alloc_arm_reg(current,i,MACH,1);
    #else
    // FIXME
    assert(0);
    #endif
    #endif
    FUNC5(current,rs1[i]);
    FUNC5(current,rs2[i]);
    FUNC5(current,MACH);
    FUNC5(current,MACL);
    FUNC4(current,MACH);
    FUNC4(current,MACL);
  }
  if(opcode[i]==4&&opcode2[i]==15) { // MAC.W
    #if defined(__i386__) || defined(__x86_64__)
    FUNC2(current,i,rs1[i],EBP);
    FUNC2(current,i,rs2[i],EDI);
    FUNC2(current,i,SR,EBX);
    FUNC0(current,i);
    FUNC2(current,i,MACL,EAX);
    FUNC2(current,i,MACH,EDX);
    #else
    #if defined(__arm__)
    alloc_arm_reg(current,i,rs1[i],5);
    alloc_arm_reg(current,i,rs2[i],6);
    alloc_arm_reg(current,i,SR,4);
    alloc_all(current,i);
    alloc_arm_reg(current,i,MACL,0);
    alloc_arm_reg(current,i,MACH,1);
    #else
    // FIXME
    assert(0);
    #endif
    #endif
    FUNC5(current,rs1[i]);
    FUNC5(current,rs2[i]);
    FUNC5(current,MACH);
    FUNC5(current,MACL);
    FUNC4(current,MACH);
    FUNC4(current,MACL);
  }
  FUNC4(current,rs1[i]);
  FUNC4(current,rs2[i]);
  minimum_free_regs[i]=HOST_REGS;
}