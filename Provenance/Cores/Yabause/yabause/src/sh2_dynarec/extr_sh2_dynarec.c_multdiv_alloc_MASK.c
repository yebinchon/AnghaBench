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
struct regstat {long long u; } ;

/* Variables and functions */
 int /*<<< orphan*/  EAX ; 
 int /*<<< orphan*/  EDX ; 
 long long MACH ; 
 long long MACL ; 
 long long SR ; 
 int /*<<< orphan*/  FUNC0 (struct regstat*,int,long long) ; 
 int /*<<< orphan*/  FUNC1 (struct regstat*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct regstat*,int,long long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct regstat*,long long) ; 
 int /*<<< orphan*/  FUNC4 (struct regstat*,long long) ; 
 int* minimum_free_regs ; 
 int* opcode ; 
 int* opcode2 ; 
 long long* rs1 ; 
 long long* rs2 ; 

void FUNC5(struct regstat *current,int i)
{
  //printf("%x: eax=%d ecx=%d edx=%d ebx=%d ebp=%d esi=%d edi=%d\n",start+i*2,current->regmap[0],current->regmap[1],current->regmap[2],current->regmap[3],current->regmap[5],current->regmap[6],current->regmap[7]);
  if(opcode[i]==0) {
    if(opcode2[i]==7) // MUL.L
    {
      FUNC3(current,rs1[i]);
      FUNC3(current,rs2[i]);
      FUNC3(current,MACL);
      FUNC0(current,i,rs1[i]);
      FUNC0(current,i,rs2[i]);
      FUNC0(current,i,MACL);
      FUNC4(current,MACL);
    }
    if(opcode2[i]==8) // CLRMAC
    {
      FUNC3(current,MACH);
      FUNC3(current,MACL);
      FUNC0(current,i,MACH);
      FUNC0(current,i,MACL);
      FUNC4(current,MACH);
      FUNC4(current,MACL);
    }
    if(opcode2[i]==9) // DIV0U
    {
      FUNC0(current,i,SR);
      FUNC4(current,SR);
    }
  }
  if(opcode[i]==2) {
    if(opcode2[i]==7) // DIV0S
    {
      FUNC3(current,rs1[i]); // Is this necessary?
      FUNC3(current,rs2[i]); // Is this necessary?
      FUNC0(current,i,rs1[i]);
      FUNC0(current,i,rs2[i]);
      FUNC0(current,i,SR);
      FUNC4(current,SR);
      #if defined(__i386__) || defined(__x86_64__)
      //#ifdef NEEDS_TEMP
      FUNC1(current,i,-1);
      minimum_free_regs[i]=1;
      #endif
    }
    if(opcode2[i]==14||opcode2[i]==15) // MULU.W / MULS.W
    {
      FUNC3(current,rs1[i]);
      FUNC3(current,rs2[i]);
      FUNC3(current,MACL);
      FUNC0(current,i,rs1[i]);
      FUNC0(current,i,rs2[i]);
      FUNC0(current,i,MACL);
      FUNC4(current,MACL);
      //#ifdef NEEDS_TEMP
      FUNC1(current,i,-1);
      minimum_free_regs[i]=1;
    }
  }
  if(opcode[i]==3) {
    // DMULU.L / DMULS.L
    #if defined(__i386__) || defined(__x86_64__)
    if(!(current->u&(1LL<<MACH))) {
      FUNC2(current,i,MACH,EDX); // Don't need to alloc MACH if it's unneeded
      current->u&=~(1LL<<MACL); // But if it is, then assume MACL is needed since it will be overwritten
    }
    FUNC2(current,i,MACL,EAX);
    #else
    if(!(current->u&(1LL<<MACH))) {
      alloc_reg(current,i,MACH);
      current->u&=~(1LL<<MACL);
    }
    alloc_reg(current,i,MACL);
    #endif
    FUNC3(current,rs1[i]);
    FUNC3(current,rs2[i]);
    FUNC3(current,MACH);
    FUNC3(current,MACL);
    FUNC0(current,i,rs1[i]);
    FUNC0(current,i,rs2[i]);
    FUNC4(current,MACH);
    FUNC4(current,MACL);
  }
}