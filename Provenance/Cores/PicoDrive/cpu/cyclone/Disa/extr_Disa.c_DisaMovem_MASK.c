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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int) ; 
 int DisaPc ; 
 int /*<<< orphan*/  DisaText ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int) ; 
 int* Tasm ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int,char*,char*) ; 

__attribute__((used)) static int FUNC4(int op)
{
  // Movem 01001d00 1xeeeeee regmask  d=direction, x=size, eeeeee=EA
  int dir=0,size=0;
  int ea=0,mask=0;
  char list[64]="",eat[64]="";

  dir=(op>>10)&1;
  size=((op>>6)&1)+1;
  ea=op&0x3f; if (ea<0x10) return 1; // ext opcode

  mask=FUNC1(DisaPc)&0xffff; DisaPc+=2;

  FUNC2(list,mask,ea); // Turn register mask into text
  FUNC0(eat,ea,size);

  if (dir) FUNC3(DisaText,"movem.%c %s, %s",Tasm[size],eat,list);
  else     FUNC3(DisaText,"movem.%c %s, %s",Tasm[size],list,eat);
  return 0;
}