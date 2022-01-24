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
typedef  int u8 ;
typedef  int pointer ;

/* Variables and functions */
 int /*<<< orphan*/  Count ; 
 int /*<<< orphan*/  EAX ; 
 int /*<<< orphan*/  EBX ; 
 int /*<<< orphan*/  ECX ; 
 int /*<<< orphan*/  HOST_CCREG ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ dyna_linker ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  last_count ; 
 int /*<<< orphan*/  next_interupt ; 

FUNC7(pointer addr, int target)
{
  u8 *ptr=(u8 *)addr;
  if(*ptr==0x0f)
  {
    FUNC0(ptr[1]>=0x80&&ptr[1]<=0x8f);
    addr+=2;
  }
  else
  {
    FUNC0(*ptr==0xe8||*ptr==0xe9);
    addr++;
  }
  FUNC3(target,EAX);
  //emit_movimm(target|slave,EAX);
  FUNC3(addr,EBX);
  //assert(addr>=0x7000000&&addr<0x7FFFFFF);
//DEBUG >
#ifdef DEBUG_CYCLE_COUNT
  emit_readword((int)&last_count,ECX);
  emit_add(HOST_CCREG,ECX,HOST_CCREG);
  emit_readword((int)&next_interupt,ECX);
  emit_writeword(HOST_CCREG,(int)&Count);
  emit_sub(HOST_CCREG,ECX,HOST_CCREG);
  emit_writeword(ECX,(int)&last_count);
#endif
//DEBUG <
  FUNC2((pointer)dyna_linker);
}