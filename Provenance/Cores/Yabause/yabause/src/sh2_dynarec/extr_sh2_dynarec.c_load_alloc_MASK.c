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
struct regstat {scalar_t__* regmap; } ;

/* Variables and functions */
 scalar_t__ DUALIND ; 
 scalar_t__ GBRIND ; 
 scalar_t__ MOREG ; 
 scalar_t__ POSTINC ; 
 scalar_t__ SR ; 
 scalar_t__ TBIT ; 
 scalar_t__* addrmode ; 
 int /*<<< orphan*/  FUNC0 (struct regstat*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct regstat*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct regstat*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct regstat*,scalar_t__) ; 
 int FUNC5 (struct regstat*,scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__*,scalar_t__) ; 
 scalar_t__ FUNC7 (struct regstat*,scalar_t__) ; 
 int* minimum_free_regs ; 
 scalar_t__ FUNC8 (scalar_t__,int) ; 
 int* opcode ; 
 int* opcode2 ; 
 scalar_t__* rs1 ; 
 scalar_t__* rs2 ; 
 scalar_t__* rt1 ; 
 scalar_t__* rt2 ; 
 int /*<<< orphan*/  FUNC9 (struct regstat*,scalar_t__,int) ; 

void FUNC10(struct regstat *current,int i)
{
  int hr;
  FUNC3(current,rt1[i]);
  //if(rs1[i]!=rt1[i]&&needed_again(rs1[i],i)) clear_const(current,rs1[i]); // Does this help or hurt?
  if(FUNC8(rs1[i],i)) FUNC0(current,i,rs1[i]);
 // if(rs2[i]>=0) alloc_reg(current,i,rs2[i]);
  FUNC0(current,i,rt1[i]==TBIT?SR:rt1[i]);
  if(addrmode[i]==DUALIND||addrmode[i]==GBRIND) {
    FUNC0(current,i,rs1[i]);
    FUNC0(current,i,rs2[i]);
    if(!FUNC7(current,rs1[i])||!FUNC7(current,rs2[i])) {
      // Both must be constants to propagate the sum
      FUNC3(current,rs1[i]);
      FUNC3(current,rs2[i]);
    }
  }
  else
  if(addrmode[i]==POSTINC) {
    if(FUNC7(current,rt2[i])) {
      int v=FUNC5(current,rt2[i]);
      FUNC9(current,rt2[i],v+(1<<((opcode[i]==4)?2:(opcode2[i]&3))));
      // Note: constant is preincremented, address_generation corrects the offset
    }
    else {
      FUNC0(current,i,rt2[i]);
      FUNC4(current,rt2[i]);
    }
  }

  // Need a register to load from memory_map
  FUNC0(current,i,MOREG);
  if(rt1[i]==TBIT||FUNC6(current->regmap,rt1[i])<0) {
    // dummy load, but we still need a register to calculate the address
    FUNC1(current,i,-1);
    minimum_free_regs[i]=1;
  }
  if(rt1[i]==TBIT) FUNC4(current,SR);
  else FUNC4(current,rt1[i]);
  
  // Make MOREG a temporary, give pass 5 another register to work with
  hr=FUNC6(current->regmap,MOREG);
  FUNC2(hr>=0);
  FUNC2(current->regmap[hr]==MOREG);
  current->regmap[hr]=-1;
  minimum_free_regs[i]++;
}