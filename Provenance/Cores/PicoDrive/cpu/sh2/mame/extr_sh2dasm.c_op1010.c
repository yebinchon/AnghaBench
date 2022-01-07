
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT32 ;
typedef int UINT16 ;


 int SIGNX12 (int) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static UINT32 op1010(char *buffer, UINT32 pc, UINT16 opcode)
{
 sprintf(buffer, "BRA     $%08x", SIGNX12(opcode & 0xfff) * 2 + pc + 2);
 return 0;
}
