
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int T1MemoryDeInit (int *) ;
 int * Vdp1FrameBuffer ;
 int * Vdp1Ram ;
 int * Vdp1Regs ;
 int free (int *) ;

void Vdp1DeInit(void) {
   if (Vdp1Regs)
      free(Vdp1Regs);
   Vdp1Regs = ((void*)0);

   if (Vdp1Ram)
      T1MemoryDeInit(Vdp1Ram);
   Vdp1Ram = ((void*)0);

   if (Vdp1FrameBuffer)
      T1MemoryDeInit(Vdp1FrameBuffer);
   Vdp1FrameBuffer = ((void*)0);
}
