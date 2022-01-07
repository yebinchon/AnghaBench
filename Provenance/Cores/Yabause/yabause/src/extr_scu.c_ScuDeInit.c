
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * ScuBP ;
 int * ScuDsp ;
 int * ScuRegs ;
 int free (int *) ;

void ScuDeInit(void) {
   if (ScuRegs)
      free(ScuRegs);
   ScuRegs = ((void*)0);

   if (ScuDsp)
      free(ScuDsp);
   ScuDsp = ((void*)0);

   if (ScuBP)
      free(ScuBP);
   ScuBP = ((void*)0);
}
