#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  unsigned int uint16 ;
typedef  scalar_t__ address ;
struct TYPE_6__ {int /*<<< orphan*/  force_dtack; } ;
struct TYPE_5__ {unsigned int pc; TYPE_1__* memory_map; int /*<<< orphan*/  cycle_end; int /*<<< orphan*/  cycles; } ;
struct TYPE_4__ {scalar_t__ base; } ;

/* Variables and functions */
 int /*<<< orphan*/  M68K_REG_PC ; 
 TYPE_3__ config ; 
 int /*<<< orphan*/  FUNC0 (char*,unsigned int,char*) ; 
 TYPE_2__ m68k ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 

unsigned int FUNC3 (unsigned int address)
{
#ifdef LOGERROR
  error ("Lockup %08X.w (%08X)\n", address, m68k_get_reg(M68K_REG_PC));
#endif
  if (!config.force_dtack)
  {
    FUNC2();
    m68k.cycles = m68k.cycle_end;
  }
  address = m68k.pc;
  return *(uint16 *)(m68k.memory_map[((address)>>16)&0xff].base + ((address) & 0xffff));
}