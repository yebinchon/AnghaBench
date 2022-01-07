
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int numthreads; scalar_t__ skip_load; int * ssfpath; int sndcoretype; int m68kcoretype; scalar_t__ play_ssf; int * biospath; int osdcoretype; scalar_t__ frameskip; int videoformattype; int basetime; int clocksync; int regionid; int modemport; int modemip; int mpegpath; int cdpath; int cdcoretype; int carttype; int percoretype; int vidcoretype; int cartpath; int buppath; int sh2coretype; scalar_t__ usethreads; } ;
typedef TYPE_1__ yabauseinit_struct ;
struct TYPE_7__ {int id; } ;
struct TYPE_6__ {int NumThreads; int DecilineMode; int emulatebios; int playing_ssf; scalar_t__ UseThreads; scalar_t__ usequickload; } ;


 int * BiosRom ;
 int * BupRam ;
 scalar_t__ BupRamWritten ;
 int CLKTYPE_26MHZ ;
 scalar_t__ CartInit (int ,int ) ;
 scalar_t__ CheatInit () ;
 scalar_t__ Cs2Init (int ,int ,int ,int ,int ,int ) ;
 int EnableAutoFrameSkip () ;
 int FormatBackupRam (int *,int) ;
 int GdbStubInit (int ,int) ;
 int * HighWram ;
 scalar_t__ LoadBackupRam (int ) ;
 scalar_t__ LoadBios (int *) ;
 int * LowWram ;
 scalar_t__ M68KInit (int ) ;
 int MSH2 ;
 int MappedMemoryInit () ;
 int OSDCORE_DEFAULT ;
 int OSDChangeCore (int ) ;
 scalar_t__ PerInit (int ) ;
 TYPE_4__* SH2Core ;
 scalar_t__ SH2Init (int ) ;
 scalar_t__ ScspInit (int ) ;
 scalar_t__ ScuInit () ;
 scalar_t__ SmpcInit (int ,int ,int ) ;
 int * T1MemoryInit (int) ;
 void* T2MemoryInit (int) ;
 int VIDSoftSetNumLayerThreads (int) ;
 int VIDSoftSetNumPriorityThreads (int) ;
 int VIDSoftSetVdp1ThreadEnable (int) ;
 scalar_t__ Vdp1Init () ;
 scalar_t__ Vdp2Init () ;
 scalar_t__ VideoInit (int ) ;
 int YAB_ERR_CANNOTINIT ;
 int YAB_ERR_FILENOTFOUND ;
 int YabSetError (int ,void*) ;
 int YabauseChangeTiming (int ) ;
 scalar_t__ YabauseQuickLoadGame () ;
 int YabauseResetNoLoad () ;
 int YabauseSetVideoFormat (int ) ;
 void* _ (char*) ;
 int bupfilename ;
 int get_ssf_info (int,int ) ;
 int load_ssf (char*,int ,int ) ;
 int sh2_dynarec_init () ;
 int ssf_artist ;
 int ssf_track_name ;
 scalar_t__ strlen (int *) ;
 TYPE_2__ yabsys ;

int YabauseInit(yabauseinit_struct *init)
{

   yabsys.UseThreads = init->usethreads;
   yabsys.NumThreads = init->numthreads;


   if (SH2Init(init->sh2coretype) != 0)
   {
      YabSetError(YAB_ERR_CANNOTINIT, _("SH2"));
      return -1;
   }

   if ((BiosRom = T2MemoryInit(0x80000)) == ((void*)0))
      return -1;

   if ((HighWram = T2MemoryInit(0x100000)) == ((void*)0))
      return -1;

   if ((LowWram = T2MemoryInit(0x100000)) == ((void*)0))
      return -1;

   if ((BupRam = T1MemoryInit(0x10000)) == ((void*)0))
      return -1;

   if (LoadBackupRam(init->buppath) != 0)
      FormatBackupRam(BupRam, 0x10000);

   BupRamWritten = 0;

   bupfilename = init->buppath;

   if (CartInit(init->cartpath, init->carttype) != 0)
   {
      YabSetError(YAB_ERR_CANNOTINIT, _("Cartridge"));
      return -1;
   }

   MappedMemoryInit();

   if (VideoInit(init->vidcoretype) != 0)
   {
      YabSetError(YAB_ERR_CANNOTINIT, _("Video"));
      return -1;
   }


   if (PerInit(init->percoretype) != 0)
   {
      YabSetError(YAB_ERR_CANNOTINIT, _("Peripheral"));
      return -1;
   }

   if (Cs2Init(init->carttype, init->cdcoretype, init->cdpath, init->mpegpath, init->modemip, init->modemport) != 0)
   {
      YabSetError(YAB_ERR_CANNOTINIT, _("CS2"));
      return -1;
   }

   if (ScuInit() != 0)
   {
      YabSetError(YAB_ERR_CANNOTINIT, _("SCU"));
      return -1;
   }

   if (M68KInit(init->m68kcoretype) != 0)
   {
      YabSetError(YAB_ERR_CANNOTINIT, _("M68K"));
      return -1;
   }

   if (ScspInit(init->sndcoretype) != 0)
   {
      YabSetError(YAB_ERR_CANNOTINIT, _("SCSP/M68K"));
      return -1;
   }

   if (Vdp1Init() != 0)
   {
      YabSetError(YAB_ERR_CANNOTINIT, _("VDP1"));
      return -1;
   }

   if (Vdp2Init() != 0)
   {
      YabSetError(YAB_ERR_CANNOTINIT, _("VDP2"));
      return -1;
   }

   if (SmpcInit(init->regionid, init->clocksync, init->basetime) != 0)
   {
      YabSetError(YAB_ERR_CANNOTINIT, _("SMPC"));
      return -1;
   }

   if (CheatInit() != 0)
   {
      YabSetError(YAB_ERR_CANNOTINIT, _("Cheat System"));
      return -1;
   }

   YabauseSetVideoFormat(init->videoformattype);
   YabauseChangeTiming(CLKTYPE_26MHZ);
   yabsys.DecilineMode = 1;

   if (init->frameskip)
      EnableAutoFrameSkip();




   OSDChangeCore(OSDCORE_DEFAULT);


   if (init->biospath != ((void*)0) && strlen(init->biospath))
   {
      if (LoadBios(init->biospath) != 0)
      {
         YabSetError(YAB_ERR_FILENOTFOUND, (void *)init->biospath);
         return -2;
      }
      yabsys.emulatebios = 0;
   }
   else
      yabsys.emulatebios = 1;

   yabsys.usequickload = 0;







   YabauseResetNoLoad();
   if (init->skip_load)
   {
    return 0;
   }

   if (yabsys.usequickload || yabsys.emulatebios)
   {
      if (YabauseQuickLoadGame() != 0)
      {
         if (yabsys.emulatebios)
         {
            YabSetError(YAB_ERR_CANNOTINIT, _("Game"));
            return -2;
         }
         else
            YabauseResetNoLoad();
      }
   }





   if (yabsys.UseThreads)
   {
      int num = yabsys.NumThreads < 1 ? 1 : yabsys.NumThreads;
      VIDSoftSetVdp1ThreadEnable(num == 1 ? 0 : 1);
      VIDSoftSetNumLayerThreads(num);
      VIDSoftSetNumPriorityThreads(num);
   }
   else
   {
      VIDSoftSetVdp1ThreadEnable(0);
      VIDSoftSetNumLayerThreads(0);
      VIDSoftSetNumPriorityThreads(0);
   }

   return 0;
}
