
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT32 ;
typedef int UINT16 ;


 size_t Rn ;
 char** regname ;
 int sprintf (char*,char*,int,char*) ;

__attribute__((used)) static UINT32 op0111(char *buffer, UINT32 pc, UINT16 opcode)
{
 sprintf(buffer, "ADD     #$%02X,%s", opcode & 0xff, regname[Rn]);
 return 0;
}
