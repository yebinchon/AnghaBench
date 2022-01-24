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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

void FUNC2(u32 reglist)
{
  reglist&=0x100f; // only restore the caller-save registers, r0-r3, r12
  if(!reglist) return;
  FUNC0("ldmia fp,{");
  if(reglist&1) FUNC0("r0, ");
  if(reglist&2) FUNC0("r1, ");
  if(reglist&4) FUNC0("r2, ");
  if(reglist&8) FUNC0("r3, ");
  if(reglist&0x1000) FUNC0("r12");
  FUNC0("}\n");
  FUNC1(0xe89b0000|reglist);
}