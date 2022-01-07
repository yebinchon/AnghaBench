
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Vdp2 ;


 int * T1MemoryInit (int) ;
 int * T2MemoryInit (int) ;
 int * Vdp2ColorRam ;
 int * Vdp2Ram ;
 int * Vdp2Regs ;
 int Vdp2Reset () ;
 scalar_t__ calloc (int,int) ;

int Vdp2Init(void) {
   if ((Vdp2Regs = (Vdp2 *) calloc(1, sizeof(Vdp2))) == ((void*)0))
      return -1;

   if ((Vdp2Ram = T1MemoryInit(0x80000)) == ((void*)0))
      return -1;

   if ((Vdp2ColorRam = T2MemoryInit(0x1000)) == ((void*)0))
      return -1;

   Vdp2Reset();
   return 0;
}
