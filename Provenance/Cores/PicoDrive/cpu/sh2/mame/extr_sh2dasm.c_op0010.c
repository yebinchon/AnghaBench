
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT32 ;
typedef int UINT16 ;


 size_t Rm ;
 size_t Rn ;
 char** regname ;
 int sprintf (char*,char*,...) ;

__attribute__((used)) static UINT32 op0010(char *buffer, UINT32 pc, UINT16 opcode)
{
 switch (opcode & 15)
 {
 case 0:
  sprintf(buffer, "MOV.B   %s,@%s", regname[Rm], regname[Rn]);
  break;
 case 1:
  sprintf(buffer, "MOV.W   %s,@%s", regname[Rm], regname[Rn]);
  break;
 case 2:
  sprintf(buffer, "MOV.L   %s,@%s", regname[Rm], regname[Rn]);
  break;
 case 3:
  sprintf(buffer, "??????  $%04X", opcode);
  break;
 case 4:
  sprintf(buffer, "MOV.B   %s,@-%s", regname[Rm], regname[Rn]);
  break;
 case 5:
  sprintf(buffer, "MOV.W   %s,@-%s", regname[Rm], regname[Rn]);
  break;
 case 6:
  sprintf(buffer, "MOV.L   %s,@-%s", regname[Rm], regname[Rn]);
  break;
 case 7:
  sprintf(buffer, "DIV0S   %s,%s", regname[Rm], regname[Rn]);
  break;
 case 8:
  sprintf(buffer, "TST     %s,%s", regname[Rm], regname[Rn]);
  break;
 case 9:
  sprintf(buffer, "AND     %s,%s", regname[Rm], regname[Rn]);
  break;
 case 10:
  sprintf(buffer, "XOR     %s,%s", regname[Rm], regname[Rn]);
  break;
 case 11:
  sprintf(buffer, "OR      %s,%s", regname[Rm], regname[Rn]);
  break;
 case 12:
  sprintf(buffer, "CMP/STR %s,%s", regname[Rm], regname[Rn]);
  break;
 case 13:
  sprintf(buffer, "XTRCT   %s,%s", regname[Rm], regname[Rn]);
  break;
 case 14:
  sprintf(buffer, "MULU.W  %s,%s", regname[Rm], regname[Rn]);
  break;
 case 15:
  sprintf(buffer, "MULS.W  %s,%s", regname[Rm], regname[Rn]);
  break;
 }
 return 0;
}
