
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UBYTE ;


 int CPU_IRQ ;
 int CPU_PutStatus () ;
 int CPU_regA ;
 int CPU_regP ;
 int CPU_regPC ;
 int CPU_regS ;
 int CPU_regX ;
 int CPU_regY ;
 int MEMORY_StateRead (int ,int ) ;
 int StateSav_ReadUBYTE (int *,int) ;
 int StateSav_ReadUWORD (int *,int) ;

void CPU_StateRead(UBYTE SaveVerbose, UBYTE StateVersion)
{
 StateSav_ReadUBYTE(&CPU_regA, 1);

 StateSav_ReadUBYTE(&CPU_regP, 1);
 CPU_PutStatus();

 StateSav_ReadUBYTE(&CPU_regS, 1);
 StateSav_ReadUBYTE(&CPU_regX, 1);
 StateSav_ReadUBYTE(&CPU_regY, 1);
 StateSav_ReadUBYTE(&CPU_IRQ, 1);

 MEMORY_StateRead(SaveVerbose, StateVersion);

 StateSav_ReadUWORD(&CPU_regPC, 1);
}
