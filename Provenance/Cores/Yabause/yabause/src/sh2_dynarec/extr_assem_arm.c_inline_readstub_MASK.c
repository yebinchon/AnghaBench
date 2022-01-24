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
typedef  int /*<<< orphan*/  u32 ;

/* Variables and functions */
 int LOADB_STUB ; 
 int LOADL_STUB ; 
 int LOADS_STUB ; 
 int LOADW_STUB ; 
 scalar_t__ MappedMemoryReadByte ; 
 scalar_t__ MappedMemoryReadLong ; 
 scalar_t__ MappedMemoryReadWord ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int FUNC7 (char*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

FUNC10(int type, int i, u32 addr, signed char regmap[], int target, int adj, u32 reglist)
{
  FUNC0("inline_readstub\n");
  //int rs=get_reg(regmap,target);
  int rt=FUNC7(regmap,target);
  //if(rs<0) rs=get_reg(regmap,-1);
  if(rt<0) rt=FUNC7(regmap,-1);
  //rt=get_reg(i_regmap,rt1[i]==TBIT?-1:rt1[i]);
  FUNC1(rt>=0);
  //if(addr<0) addr=rt;
  //if(addr<0) addr=get_reg(i_regmap,-1);
  //assert(addr>=0);
  FUNC9(reglist);
  FUNC4(addr,0);
  if(type==LOADB_STUB)
    FUNC2((int)MappedMemoryReadByte);
  if(type==LOADW_STUB)
    FUNC2((int)MappedMemoryReadWord);
  if(type==LOADL_STUB)
    FUNC2((int)MappedMemoryReadLong);
  FUNC1(type!=LOADS_STUB);
  if(type==LOADB_STUB)
  {
    if(rt>=0) FUNC5(0,rt);
  }
  else if(type==LOADW_STUB)
  {
    if(rt>=0) FUNC6(0,rt);
  }
  else
  {
    if(rt>0) FUNC3(0,rt);
  }

  FUNC8(reglist);
}