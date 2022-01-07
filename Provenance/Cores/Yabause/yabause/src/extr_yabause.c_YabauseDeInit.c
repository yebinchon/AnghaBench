
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * BiosRom ;
 int * BupRam ;
 int CartDeInit () ;
 int CheatDeInit () ;
 int Cs2DeInit () ;
 int * HighWram ;
 int * LowWram ;
 int PerDeInit () ;
 int SH2DeInit () ;
 int ScspDeInit () ;
 int ScuDeInit () ;
 int SmpcDeInit () ;
 scalar_t__ T123Save (int *,int,int,scalar_t__) ;
 int T1MemoryDeInit (int *) ;
 int T2MemoryDeInit (int *) ;
 int Vdp1DeInit () ;
 int Vdp2DeInit () ;
 int VideoDeInit () ;
 int YAB_ERR_FILEWRITE ;
 int YabSetError (int ,void*) ;
 scalar_t__ bupfilename ;

void YabauseDeInit(void) {
   SH2DeInit();

   if (BiosRom)
      T2MemoryDeInit(BiosRom);
   BiosRom = ((void*)0);

   if (HighWram)
      T2MemoryDeInit(HighWram);
   HighWram = ((void*)0);

   if (LowWram)
      T2MemoryDeInit(LowWram);
   LowWram = ((void*)0);

   if (BupRam)
   {
      if (T123Save(BupRam, 0x10000, 1, bupfilename) != 0)
         YabSetError(YAB_ERR_FILEWRITE, (void *)bupfilename);

      T1MemoryDeInit(BupRam);
   }
   BupRam = ((void*)0);

   CartDeInit();
   Cs2DeInit();
   ScuDeInit();
   ScspDeInit();
   Vdp1DeInit();
   Vdp2DeInit();
   SmpcDeInit();
   PerDeInit();
   VideoDeInit();
   CheatDeInit();
}
