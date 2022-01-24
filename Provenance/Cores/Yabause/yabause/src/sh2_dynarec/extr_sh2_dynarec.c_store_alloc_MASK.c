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
struct regstat {int* regmap; } ;

/* Variables and functions */
 scalar_t__ DUALIND ; 
 int MOREG ; 
 scalar_t__ PREDEC ; 
 scalar_t__* addrmode ; 
 int /*<<< orphan*/  FUNC0 (struct regstat*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct regstat*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct regstat*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct regstat*,int) ; 
 int FUNC5 (struct regstat*,int) ; 
 int FUNC6 (int*,int) ; 
 scalar_t__ FUNC7 (struct regstat*,int) ; 
 int* minimum_free_regs ; 
 scalar_t__ FUNC8 (int,int) ; 
 int* opcode ; 
 int* opcode2 ; 
 int* rs1 ; 
 int* rs2 ; 
 int* rs3 ; 
 int* rt1 ; 
 int /*<<< orphan*/  FUNC9 (struct regstat*,int,int) ; 

void FUNC10(struct regstat *current,int i)
{
  int hr;
  //printf("%x: eax=%d ecx=%d edx=%d ebx=%d ebp=%d esi=%d edi=%d\n",start+i*2,current->regmap[0],current->regmap[1],current->regmap[2],current->regmap[3],current->regmap[5],current->regmap[6],current->regmap[7]);
  if(addrmode[i]==DUALIND) {
    FUNC0(current,i,rs2[i]);
    FUNC0(current,i,0); // rs3[i]
    if(!FUNC7(current,rs2[i])||!FUNC7(current,rs3[i])) {
      // Both must be constants to propagate the sum
      FUNC3(current,rs2[i]);
      FUNC3(current,rs3[i]);
    }
  }
  if(addrmode[i]==PREDEC) {
    if(FUNC7(current,rt1[i])) {
      int v=FUNC5(current,rt1[i]);
      FUNC9(current,rt1[i],v-(1<<((opcode[i]==4)?2:(opcode2[i]&3))));
    }
    else {
      FUNC0(current,i,rt1[i]);
      FUNC4(current,rt1[i]);
    }
  }
  if(FUNC8(rs2[i],i)) FUNC0(current,i,rs2[i]);
  FUNC3(current,rs1[i]);
  FUNC0(current,i,rs1[i]);
  // Need a register to load from memory_map
  FUNC0(current,i,MOREG);
  
  // We need a temporary register for address generation
  FUNC1(current,i,-1);
  minimum_free_regs[i]=1;

  // Make MOREG a temporary, give pass 5 another register to work with
  hr=FUNC6(current->regmap,MOREG);
  FUNC2(hr>=0);
  FUNC2(current->regmap[hr]==MOREG);
  current->regmap[hr]=-1;
  minimum_free_regs[i]++;
}