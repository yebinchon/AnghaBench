
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT32 ;
typedef int UINT16 ;


 size_t Rm ;
 size_t Rn ;
 char** regname ;
 int sprintf (char*,char*,char*,char*) ;

__attribute__((used)) static UINT32 op0011(char *buffer, UINT32 pc, UINT16 opcode)
{
 switch (opcode & 15)
 {
 case 0:
  sprintf(buffer, "CMP/EQ  %s,%s", regname[Rm], regname[Rn]);
  break;
 case 1:
  sprintf(buffer, "??????  %s,%s", regname[Rm], regname[Rn]);
  break;
 case 2:
  sprintf(buffer, "CMP/HS  %s,%s", regname[Rm], regname[Rn]);
  break;
 case 3:
  sprintf(buffer, "CMP/GE  %s,%s", regname[Rm], regname[Rn]);
  break;
 case 4:
  sprintf(buffer, "DIV1    %s,%s", regname[Rm], regname[Rn]);
  break;
 case 5:
  sprintf(buffer, "DMULU.L %s,%s", regname[Rm], regname[Rn]);
  break;
 case 6:
  sprintf(buffer, "CMP/HI  %s,%s", regname[Rm], regname[Rn]);
  break;
 case 7:
  sprintf(buffer, "CMP/GT  %s,%s", regname[Rm], regname[Rn]);
  break;
 case 8:
  sprintf(buffer, "SUB     %s,%s", regname[Rm], regname[Rn]);
  break;
 case 9:
  sprintf(buffer, "??????  %s,%s", regname[Rm], regname[Rn]);
  break;
 case 10:
  sprintf(buffer, "SUBC    %s,%s", regname[Rm], regname[Rn]);
  break;
 case 11:
  sprintf(buffer, "SUBV    %s,%s", regname[Rm], regname[Rn]);
  break;
 case 12:
  sprintf(buffer, "ADD     %s,%s", regname[Rm], regname[Rn]);
  break;
 case 13:
  sprintf(buffer, "DMULS.L %s,%s", regname[Rm], regname[Rn]);
  break;
 case 14:
  sprintf(buffer, "ADDC    %s,%s", regname[Rm], regname[Rn]);
  break;
 case 15:
  sprintf(buffer, "ADDV    %s,%s", regname[Rm], regname[Rn]);
  break;
 }
 return 0;
}
