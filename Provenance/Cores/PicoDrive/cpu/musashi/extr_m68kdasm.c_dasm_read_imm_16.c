
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;


 int g_address_mask ;
 int g_cpu_pc ;
 size_t g_rawbasepc ;
 int* g_rawop ;
 int m68k_read_disassembler_16 (int) ;

__attribute__((used)) static uint dasm_read_imm_16(uint advance)
{
 uint result;
 if (g_rawop)
  result = (g_rawop[g_cpu_pc + 0 - g_rawbasepc] << 8) |
            g_rawop[g_cpu_pc + 1 - g_rawbasepc];
 else
  result = m68k_read_disassembler_16(g_cpu_pc & g_address_mask) & 0xffff;
 g_cpu_pc += advance;
 return result;
}
