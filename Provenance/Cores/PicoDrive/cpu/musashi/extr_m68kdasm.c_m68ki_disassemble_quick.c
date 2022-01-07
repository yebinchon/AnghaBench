
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int m68k_disassemble (char*,unsigned int,unsigned int) ;

char* m68ki_disassemble_quick(unsigned int pc, unsigned int cpu_type)
{
 static char buff[100];
 buff[0] = 0;
 m68k_disassemble(buff, pc, cpu_type);
 return buff;
}
