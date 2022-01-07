
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int T1MemoryDeInit (int *) ;
 int T2MemoryDeInit (int *) ;
 int * Vdp2ColorRam ;
 int * Vdp2Ram ;
 int * Vdp2Regs ;
 int free (int *) ;

void Vdp2DeInit(void) {
   if (Vdp2Regs)
      free(Vdp2Regs);
   Vdp2Regs = ((void*)0);

   if (Vdp2Ram)
      T1MemoryDeInit(Vdp2Ram);
   Vdp2Ram = ((void*)0);

   if (Vdp2ColorRam)
      T2MemoryDeInit(Vdp2ColorRam);
   Vdp2ColorRam = ((void*)0);
}
