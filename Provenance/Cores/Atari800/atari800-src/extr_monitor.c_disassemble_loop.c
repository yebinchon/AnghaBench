
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UWORD ;
typedef int UBYTE ;
typedef int SBYTE ;


 int MEMORY_SafeGetByte (int) ;
 int* MONITOR_optype6502 ;
 int disassemble (int) ;
 int printf (char*,int) ;

__attribute__((used)) static UWORD disassemble_loop(UWORD addr)
{
 int caddr;
 caddr = addr;
 for (;;) {
  UBYTE opcode;
  if (caddr > (UWORD) (addr + 0x7e)) {
   printf("Conditional loop containing instruction at %04X not detected\n", addr);
   break;
  }
  opcode = MEMORY_SafeGetByte(caddr);
  if ((opcode & 0x1f) == 0x10) {

   UWORD target = caddr + 2 + (SBYTE) MEMORY_SafeGetByte(caddr + 1);
   if (target <= addr) {
    addr = disassemble(target);
    break;
   }
  }
  caddr += MONITOR_optype6502[opcode] & 3;
 }
 return addr;
}
