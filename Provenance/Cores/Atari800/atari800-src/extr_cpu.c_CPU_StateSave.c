
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UBYTE ;


 int CPU_GetStatus () ;
 int CPU_IRQ ;
 int CPU_regA ;
 int CPU_regP ;
 int CPU_regPC ;
 int CPU_regS ;
 int CPU_regX ;
 int CPU_regY ;
 int MEMORY_StateSave (int ) ;
 int StateSav_SaveUBYTE (int *,int) ;
 int StateSav_SaveUWORD (int *,int) ;

void CPU_StateSave(UBYTE SaveVerbose)
{
 StateSav_SaveUBYTE(&CPU_regA, 1);

 CPU_GetStatus();
 StateSav_SaveUBYTE(&CPU_regP, 1);

 StateSav_SaveUBYTE(&CPU_regS, 1);
 StateSav_SaveUBYTE(&CPU_regX, 1);
 StateSav_SaveUBYTE(&CPU_regY, 1);
 StateSav_SaveUBYTE(&CPU_IRQ, 1);

 MEMORY_StateSave(SaveVerbose);

 StateSav_SaveUWORD(&CPU_regPC, 1);
}
