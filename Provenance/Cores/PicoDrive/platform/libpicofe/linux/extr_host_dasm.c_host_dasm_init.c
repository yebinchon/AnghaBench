
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int disassembler_options; int endian; int mach; int arch; int read_memory_func; int print_address_func; int memory_error_func; int flavour; } ;


 int BFD_ARCH ;
 int BFD_ENDIAN_LITTLE ;
 int BFD_MACH ;
 int DASM_OPTS ;
 int bfd_init () ;
 int bfd_target_unknown_flavour ;
 TYPE_1__ di ;
 int dis_asm_memory_error ;
 int dis_asm_print_address ;
 int dis_asm_read_memory ;
 int disassemble_init_for_target (TYPE_1__*) ;
 int * g_argv ;
 int init_disassemble_info (TYPE_1__*,int *,int ) ;
 int init_done ;
 int insn_printf ;
 int slurp_symtab (int ) ;

__attribute__((used)) static void host_dasm_init(void)
{
  bfd_init();
  slurp_symtab(g_argv[0]);

  init_disassemble_info(&di, ((void*)0), insn_printf);
  di.flavour = bfd_target_unknown_flavour;
  di.memory_error_func = dis_asm_memory_error;
  di.print_address_func = dis_asm_print_address;

  di.read_memory_func = dis_asm_read_memory;
  di.arch = BFD_ARCH;
  di.mach = BFD_MACH;
  di.endian = BFD_ENDIAN_LITTLE;
  di.disassembler_options = DASM_OPTS;
  disassemble_init_for_target(&di);
  init_done = 1;
}
