
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int g_rawbasepc ;
 unsigned char const* g_rawop ;
 unsigned int m68k_disassemble (char*,unsigned int,unsigned int) ;

unsigned int m68k_disassemble_raw(char* str_buff, unsigned int pc, const unsigned char* opdata, const unsigned char* argdata, unsigned int cpu_type)
{
 unsigned int result;

 g_rawop = opdata;
 g_rawbasepc = pc;
 result = m68k_disassemble(str_buff, pc, cpu_type);
 g_rawop = ((void*)0);
 return result;
}
