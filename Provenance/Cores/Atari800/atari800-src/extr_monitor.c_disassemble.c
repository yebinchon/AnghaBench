
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UWORD ;


 int show_instruction (int ,int ) ;
 int stdout ;

__attribute__((used)) static UWORD disassemble(UWORD addr)
{
 int count = 24;
 do
  addr = show_instruction(stdout, addr);
 while (--count > 0);
 return addr;
}
