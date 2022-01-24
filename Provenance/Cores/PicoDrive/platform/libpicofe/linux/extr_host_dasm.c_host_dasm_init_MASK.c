#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  disassembler_options; int /*<<< orphan*/  endian; int /*<<< orphan*/  mach; int /*<<< orphan*/  arch; int /*<<< orphan*/  read_memory_func; int /*<<< orphan*/  print_address_func; int /*<<< orphan*/  memory_error_func; int /*<<< orphan*/  flavour; } ;

/* Variables and functions */
 int /*<<< orphan*/  BFD_ARCH ; 
 int /*<<< orphan*/  BFD_ENDIAN_LITTLE ; 
 int /*<<< orphan*/  BFD_MACH ; 
 int /*<<< orphan*/  DASM_OPTS ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  bfd_target_unknown_flavour ; 
 TYPE_1__ di ; 
 int /*<<< orphan*/  dis_asm_memory_error ; 
 int /*<<< orphan*/  dis_asm_print_address ; 
 int /*<<< orphan*/  dis_asm_read_memory ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/ * g_argv ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int init_done ; 
 int /*<<< orphan*/  insn_printf ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(void)
{
  FUNC0();
  FUNC3(g_argv[0]);

  FUNC2(&di, NULL, insn_printf);
  di.flavour = bfd_target_unknown_flavour;
  di.memory_error_func = dis_asm_memory_error; 
  di.print_address_func = dis_asm_print_address;
//  di.symbol_at_address_func = dis_asm_symbol_at_address;
  di.read_memory_func = dis_asm_read_memory;
  di.arch = BFD_ARCH;
  di.mach = BFD_MACH;
  di.endian = BFD_ENDIAN_LITTLE;
  di.disassembler_options = DASM_OPTS;
  FUNC1(&di);
  init_done = 1;
}