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
 int /*<<< orphan*/  EDI ; 
 int ESI ; 
 int STOREB_STUB ; 
 int STOREL_STUB ; 
 int STOREW_STUB ; 
 scalar_t__ WriteInvalidateByte ; 
 scalar_t__ WriteInvalidateLong ; 
 scalar_t__ WriteInvalidateWord ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

FUNC8(int type, int i, u32 addr, signed char regmap[], int target, int adj, u32 reglist)
{
  FUNC0("inline_writestub\n");
  //int rs=get_reg(regmap,-1);
  int rt=FUNC5(regmap,target);
  //assert(rs>=0);
  FUNC1(rt>=0);
  FUNC7(reglist);
  // "FASTCALL" api: address in eax, data in edx
  if(rt!=ESI) FUNC3(rt,ESI);
  FUNC4(addr,EDI); // FIXME - should be able to move the existing value
  if(type==STOREB_STUB)
    FUNC2((int)WriteInvalidateByte);
  if(type==STOREW_STUB)
    FUNC2((int)WriteInvalidateWord);
  if(type==STOREL_STUB)
    FUNC2((int)WriteInvalidateLong);
  FUNC6(reglist);
}