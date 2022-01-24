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
 scalar_t__ alignedsource ; 
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__) ; 
 scalar_t__ copy ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 
 int /*<<< orphan*/  FUNC6 (int,int) ; 
 int* instr_addr ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 scalar_t__ out ; 
 scalar_t__ slave ; 
 int slen ; 
 scalar_t__ source ; 
 scalar_t__ start ; 
 int /*<<< orphan*/  verify_code ; 

int FUNC8(int i)
{
  FUNC0("do_dirty_stub %x\n",start+i*2);
  u32 alignedlen=((((u32)source)+slen*2+2)&~2)-(u32)alignedsource;
  // Careful about the code output here, verify_dirty needs to parse it.
  #ifndef HAVE_ARMv7
  FUNC3(((int)source&~3),1);
  FUNC3((int)copy,2);
  FUNC3((((u32)source+slen*2+2)&~3)-((u32)source&~3),3);
  #else
  emit_movw(((u32)source&~3)&0x0000FFFF,1);
  emit_movw(((u32)copy)&0x0000FFFF,2);
  emit_movt(((u32)source&~3)&0xFFFF0000,1);
  emit_movt(((u32)copy)&0xFFFF0000,2);
  emit_movw((((u32)source+slen*2+2)&~3)-((u32)source&~3),3);
  #endif
  FUNC4(start+i*2+slave,0);
  FUNC1((int)&verify_code);
  int entry=(int)out;
  FUNC7(i);
  if(entry==(int)out) entry=instr_addr[i];
  FUNC2(instr_addr[i]);
  return entry;
}