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
typedef  int u64 ;
typedef  int u32 ;

/* Variables and functions */
 int EAX ; 
 int EBX ; 
 int ECX ; 
 scalar_t__ alignedsource ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 scalar_t__ copy ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 
 int* instr_addr ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 scalar_t__ out ; 
 int slave ; 
 int slen ; 
 scalar_t__ source ; 
 int start ; 
 int /*<<< orphan*/  verify_code ; 

int FUNC6(int i)
{
  FUNC0("do_dirty_stub %x\n",start+i*2);
  u32 alignedlen=((((u32)source)+slen*2+2)&~2)-(u32)alignedsource;
  if((u64)source<=0xFFFFFFFF)
    FUNC3(((u32)source)&~3,EAX); //alignedsource
  else
    FUNC4(((u64)source)&~3,EAX); //alignedsource
  FUNC3((u32)copy,EBX);
  FUNC3((((u32)source+slen*2+2)&~3)-((u32)source&~3),ECX);
  FUNC3(start+i*2+slave,12);
  FUNC1((int)&verify_code);
  int entry=(int)out;
  FUNC5(i);
  if(entry==(int)out) entry=instr_addr[i];
  FUNC2(instr_addr[i]);
  return entry;
}