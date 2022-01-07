
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int Vdp1 ;
struct TYPE_2__ {int disptoggle; } ;


 void* T1MemoryInit (int) ;
 TYPE_1__ Vdp1External ;
 int * Vdp1FrameBuffer ;
 int * Vdp1Ram ;
 int * Vdp1Regs ;
 scalar_t__ malloc (int) ;

int Vdp1Init(void) {
   if ((Vdp1Regs = (Vdp1 *) malloc(sizeof(Vdp1))) == ((void*)0))
      return -1;

   if ((Vdp1Ram = T1MemoryInit(0x80000)) == ((void*)0))
      return -1;


   if ((Vdp1FrameBuffer = T1MemoryInit(0x80000)) == ((void*)0))
      return -1;

   Vdp1External.disptoggle = 1;

   return 0;
}
