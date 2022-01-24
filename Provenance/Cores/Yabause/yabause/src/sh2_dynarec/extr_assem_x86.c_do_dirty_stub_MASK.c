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
 int /*<<< orphan*/  EAX ; 
 int /*<<< orphan*/  EBX ; 
 int /*<<< orphan*/  ECX ; 
 int /*<<< orphan*/  ESP ; 
 scalar_t__ alignedsource ; 
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__) ; 
 scalar_t__ copy ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int* instr_addr ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 scalar_t__ out ; 
 scalar_t__ slave ; 
 int slen ; 
 scalar_t__ source ; 
 scalar_t__ start ; 
 int /*<<< orphan*/  verify_code ; 

int FUNC7(int i)
{
  FUNC0("do_dirty_stub %x\n",start+i*2);
  u32 alignedlen=((((u32)source)+slen*2+2)&~2)-(u32)alignedsource;
  FUNC5(start+i*2+slave);
  FUNC4(((u32)source)&~3,EAX); //alignedsource
  FUNC4((u32)copy,EBX);
  FUNC4((((u32)source+slen*2+2)&~3)-((u32)source&~3),ECX);
  FUNC2((int)&verify_code);
  FUNC1(ESP,4,ESP);
  int entry=(int)out;
  FUNC6(i);
  if(entry==(int)out) entry=instr_addr[i];
  FUNC3(instr_addr[i]);
  return entry;
}