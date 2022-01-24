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
 int /*<<< orphan*/  GBR ; 
 scalar_t__ GBRIND ; 
 int /*<<< orphan*/  MOREG ; 
 scalar_t__ REGIND ; 
 int /*<<< orphan*/  SR ; 
 scalar_t__ TBIT ; 
 scalar_t__* addrmode ; 
 int /*<<< orphan*/  FUNC0 (struct regstat*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct regstat*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct regstat*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct regstat*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct regstat*,int /*<<< orphan*/ ) ; 
 int* minimum_free_regs ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * rs1 ; 
 int /*<<< orphan*/ * rs2 ; 
 int /*<<< orphan*/ * rs3 ; 
 scalar_t__* rt1 ; 

void FUNC6(struct regstat *current,int i)
{
  //printf("%x: eax=%d ecx=%d edx=%d ebx=%d ebp=%d esi=%d edi=%d\n",start+i*2,current->regmap[0],current->regmap[1],current->regmap[2],current->regmap[3],current->regmap[5],current->regmap[6],current->regmap[7]);
  if(addrmode[i]==GBRIND) {
    FUNC0(current,i,GBR);
    FUNC0(current,i,0);
    if(!FUNC4(current,rs2[i])||!FUNC4(current,rs3[i])) {
      // Both must be constants to propagate the sum
      FUNC2(current,rs2[i]);
      FUNC2(current,rs3[i]);
    }
  }
  if(addrmode[i]==REGIND&&FUNC5(rs1[i],i)) FUNC0(current,i,rs1[i]);
  if(rt1[i]==TBIT) {
    FUNC0(current,i,SR);
    FUNC3(current,SR);
  }

  // Need a register to load from memory_map
  FUNC0(current,i,MOREG);
  
  // We need a temporary register for address generation
  FUNC1(current,i,-1);
  // And one for the read-modify-write
  //alloc_reg_temp(current,i,-2); // Can re-use mapping reg for this
  minimum_free_regs[i]=1;
}