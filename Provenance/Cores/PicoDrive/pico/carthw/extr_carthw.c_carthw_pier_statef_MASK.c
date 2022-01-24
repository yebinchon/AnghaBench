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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  pier_dump_prot ; 
 int* pier_regs ; 

__attribute__((used)) static void FUNC2(void)
{
  FUNC0(pier_dump_prot);

  if (!pier_dump_prot) {
    /* setup all banks */
    u32 r0 = pier_regs[0];
    FUNC1(0xa13001, 3);
    FUNC1(0xa13003, pier_regs[1]);
    FUNC1(0xa13005, pier_regs[2]);
    FUNC1(0xa13007, pier_regs[3]);
    FUNC1(0xa13001, r0);
  }
}