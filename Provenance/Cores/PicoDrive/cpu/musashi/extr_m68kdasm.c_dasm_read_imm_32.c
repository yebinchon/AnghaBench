
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;


 int g_address_mask ;
 int g_cpu_pc ;
 size_t g_rawbasepc ;
 int* g_rawop ;
 int m68k_read_disassembler_32 (int) ;

__attribute__((used)) static uint dasm_read_imm_32(uint advance)
{
 uint result;
 if (g_rawop)
  result = (g_rawop[g_cpu_pc + 0 - g_rawbasepc] << 24) |
           (g_rawop[g_cpu_pc + 1 - g_rawbasepc] << 16) |
           (g_rawop[g_cpu_pc + 2 - g_rawbasepc] << 8) |
            g_rawop[g_cpu_pc + 3 - g_rawbasepc];
 else
  result = m68k_read_disassembler_32(g_cpu_pc & g_address_mask) & 0xffff;
 g_cpu_pc += advance;
 return result;
}
