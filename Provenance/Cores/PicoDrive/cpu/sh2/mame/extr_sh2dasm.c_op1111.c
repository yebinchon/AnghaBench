
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT32 ;
typedef int UINT16 ;


 int sprintf (char*,char*,int) ;

__attribute__((used)) static UINT32 op1111(char *buffer, UINT32 pc, UINT16 opcode)
{
 sprintf(buffer, "unknown $%04X", opcode);
 return 0;
}
