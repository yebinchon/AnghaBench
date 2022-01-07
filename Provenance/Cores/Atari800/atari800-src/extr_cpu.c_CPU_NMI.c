
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UBYTE ;


 int ANTIC_xpos ;
 int CPU_SetI ;
 int CPU_regPC ;
 int CPU_regS ;
 int INC_RET_NESTING ;
 int MEMORY_dGetWordAligned (int) ;
 int PHPB0 ;
 int PHW (int ) ;

void CPU_NMI(void)
{
 UBYTE S = CPU_regS;
 UBYTE data;

 PHW(CPU_regPC);
 PHPB0;
 CPU_SetI;
 CPU_regPC = MEMORY_dGetWordAligned(0xfffa);
 CPU_regS = S;
 ANTIC_xpos += 7;
 INC_RET_NESTING;
}
