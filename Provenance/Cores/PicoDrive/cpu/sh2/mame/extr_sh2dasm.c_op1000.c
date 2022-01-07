
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT32 ;
typedef int UINT16 ;


 size_t Rm ;
 int SIGNX8 (int) ;
 char** regname ;
 int sprintf (char*,char*,int,...) ;

__attribute__((used)) static UINT32 op1000(char *buffer, UINT32 pc, UINT16 opcode)
{
 switch((opcode >> 8) & 15)
 {
 case 0:
  sprintf(buffer, "MOV.B   R0,@($%02X,%s)", (opcode & 15), regname[Rm]);
  break;
 case 1:
  sprintf(buffer, "MOV.W   R0,@($%02X,%s)", (opcode & 15) * 2, regname[Rm]);
  break;
 case 4:
  sprintf(buffer, "MOV.B   @($%02X,%s),R0", (opcode & 15), regname[Rm]);
  break;
 case 5:
  sprintf(buffer, "MOV.W   @($%02X,%s),R0", (opcode & 15), regname[Rm]);
  break;
 case 8:
  sprintf(buffer, "CMP/EQ  #$%02X,R0", (opcode & 0xff));
  break;
 case 9:
  sprintf(buffer, "BT      $%08x", pc + SIGNX8(opcode & 0xff) * 2 + 2);
  break;
 case 11:
  sprintf(buffer, "BF      $%08x", pc + SIGNX8(opcode & 0xff) * 2 + 2);
  break;
 case 13:
  sprintf(buffer, "BTS     $%08x", pc + SIGNX8(opcode & 0xff) * 2 + 2);
  break;
 case 15:
  sprintf(buffer, "BFS     $%08x", pc + SIGNX8(opcode & 0xff) * 2 + 2);
  break;
 default :
  sprintf(buffer, "invalid $%04X", opcode);
 }
 return 0;
}
