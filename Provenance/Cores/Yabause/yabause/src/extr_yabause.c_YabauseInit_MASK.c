#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int numthreads; scalar_t__ skip_load; int /*<<< orphan*/ * ssfpath; int /*<<< orphan*/  sndcoretype; int /*<<< orphan*/  m68kcoretype; scalar_t__ play_ssf; int /*<<< orphan*/ * biospath; int /*<<< orphan*/  osdcoretype; scalar_t__ frameskip; int /*<<< orphan*/  videoformattype; int /*<<< orphan*/  basetime; int /*<<< orphan*/  clocksync; int /*<<< orphan*/  regionid; int /*<<< orphan*/  modemport; int /*<<< orphan*/  modemip; int /*<<< orphan*/  mpegpath; int /*<<< orphan*/  cdpath; int /*<<< orphan*/  cdcoretype; int /*<<< orphan*/  carttype; int /*<<< orphan*/  percoretype; int /*<<< orphan*/  vidcoretype; int /*<<< orphan*/  cartpath; int /*<<< orphan*/  buppath; int /*<<< orphan*/  sh2coretype; scalar_t__ usethreads; } ;
typedef  TYPE_1__ yabauseinit_struct ;
struct TYPE_7__ {int id; } ;
struct TYPE_6__ {int NumThreads; int DecilineMode; int emulatebios; int playing_ssf; scalar_t__ UseThreads; scalar_t__ usequickload; } ;

/* Variables and functions */
 int /*<<< orphan*/ * BiosRom ; 
 int /*<<< orphan*/ * BupRam ; 
 scalar_t__ BupRamWritten ; 
 int /*<<< orphan*/  CLKTYPE_26MHZ ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * HighWram ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * LowWram ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MSH2 ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  OSDCORE_DEFAULT ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 TYPE_4__* SH2Core ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 () ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC16 (int) ; 
 void* FUNC17 (int) ; 
 int /*<<< orphan*/  FUNC18 (int) ; 
 int /*<<< orphan*/  FUNC19 (int) ; 
 int /*<<< orphan*/  FUNC20 (int) ; 
 scalar_t__ FUNC21 () ; 
 scalar_t__ FUNC22 () ; 
 scalar_t__ FUNC23 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  YAB_ERR_CANNOTINIT ; 
 int /*<<< orphan*/  YAB_ERR_FILENOTFOUND ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC26 () ; 
 int /*<<< orphan*/  FUNC27 () ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ ) ; 
 void* FUNC29 (char*) ; 
 int /*<<< orphan*/  bupfilename ; 
 int /*<<< orphan*/  FUNC30 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC31 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC32 () ; 
 int /*<<< orphan*/  ssf_artist ; 
 int /*<<< orphan*/  ssf_track_name ; 
 scalar_t__ FUNC33 (int /*<<< orphan*/ *) ; 
 TYPE_2__ yabsys ; 

int FUNC34(yabauseinit_struct *init)
{
   // Need to set this first, so init routines see it
   yabsys.UseThreads = init->usethreads;
   yabsys.NumThreads = init->numthreads;

   // Initialize both cpu's
   if (FUNC12(init->sh2coretype) != 0)
   {
      FUNC24(YAB_ERR_CANNOTINIT, FUNC29("SH2"));
      return -1;
   }

   if ((BiosRom = FUNC17(0x80000)) == NULL)
      return -1;

   if ((HighWram = FUNC17(0x100000)) == NULL)
      return -1;

   if ((LowWram = FUNC17(0x100000)) == NULL)
      return -1;

   if ((BupRam = FUNC16(0x10000)) == NULL)
      return -1;

   if (FUNC6(init->buppath) != 0)
      FUNC4(BupRam, 0x10000);

   BupRamWritten = 0;

   bupfilename = init->buppath;

   if (FUNC0(init->cartpath, init->carttype) != 0)
   {
      FUNC24(YAB_ERR_CANNOTINIT, FUNC29("Cartridge"));
      return -1;
   }

   FUNC9();

   if (FUNC23(init->vidcoretype) != 0)
   {
      FUNC24(YAB_ERR_CANNOTINIT, FUNC29("Video"));
      return -1;
   }

   // Initialize input core
   if (FUNC11(init->percoretype) != 0)
   {
      FUNC24(YAB_ERR_CANNOTINIT, FUNC29("Peripheral"));
      return -1;
   }

   if (FUNC2(init->carttype, init->cdcoretype, init->cdpath, init->mpegpath, init->modemip, init->modemport) != 0)
   {
      FUNC24(YAB_ERR_CANNOTINIT, FUNC29("CS2"));
      return -1;
   }

   if (FUNC14() != 0)
   {
      FUNC24(YAB_ERR_CANNOTINIT, FUNC29("SCU"));
      return -1;
   }

   if (FUNC8(init->m68kcoretype) != 0)
   {
      FUNC24(YAB_ERR_CANNOTINIT, FUNC29("M68K"));
      return -1;
   }

   if (FUNC13(init->sndcoretype) != 0)
   {
      FUNC24(YAB_ERR_CANNOTINIT, FUNC29("SCSP/M68K"));
      return -1;
   }

   if (FUNC21() != 0)
   {
      FUNC24(YAB_ERR_CANNOTINIT, FUNC29("VDP1"));
      return -1;
   }

   if (FUNC22() != 0)
   {
      FUNC24(YAB_ERR_CANNOTINIT, FUNC29("VDP2"));
      return -1;
   }

   if (FUNC15(init->regionid, init->clocksync, init->basetime) != 0)
   {
      FUNC24(YAB_ERR_CANNOTINIT, FUNC29("SMPC"));
      return -1;
   }

   if (FUNC1() != 0)
   {
      FUNC24(YAB_ERR_CANNOTINIT, FUNC29("Cheat System"));
      return -1;
   }

   FUNC28(init->videoformattype);
   FUNC25(CLKTYPE_26MHZ);
   yabsys.DecilineMode = 1;

   if (init->frameskip)
      FUNC3();

#ifdef YAB_PORT_OSD
   OSDChangeCore(init->osdcoretype);
#else
   FUNC10(OSDCORE_DEFAULT);
#endif

   if (init->biospath != NULL && FUNC33(init->biospath))
   {
      if (FUNC7(init->biospath) != 0)
      {
         FUNC24(YAB_ERR_FILENOTFOUND, (void *)init->biospath);
         return -2;
      }
      yabsys.emulatebios = 0;
   }
   else
      yabsys.emulatebios = 1;

   yabsys.usequickload = 0;

   #if defined(SH2_DYNAREC)
   if(SH2Core->id==2) {
     sh2_dynarec_init();
   }
   #endif

   FUNC27();

#ifdef YAB_WANT_SSF

   if (init->play_ssf && init->ssfpath != NULL && strlen(init->ssfpath))
   {
      if (!load_ssf((char*)init->ssfpath, init->m68kcoretype, init->sndcoretype))
      {
         YabSetError(YAB_ERR_FILENOTFOUND, (void *)init->ssfpath);

         yabsys.playing_ssf = 0;

         return -2;
      }

      yabsys.playing_ssf = 1;

      get_ssf_info(1, ssf_track_name);
      get_ssf_info(3, ssf_artist);

      return 0;
   }
   else
      yabsys.playing_ssf = 0;

#endif

   if (init->skip_load)
   {
	   return 0;
   }

   if (yabsys.usequickload || yabsys.emulatebios)
   {
      if (FUNC26() != 0)
      {
         if (yabsys.emulatebios)
         {
            FUNC24(YAB_ERR_CANNOTINIT, FUNC29("Game"));
            return -2;
         }
         else
            FUNC27();
      }
   }

#ifdef HAVE_GDBSTUB
   GdbStubInit(MSH2, 43434);
#endif

   if (yabsys.UseThreads)
   {
      int num = yabsys.NumThreads < 1 ? 1 : yabsys.NumThreads;
      FUNC20(num == 1 ? 0 : 1);
      FUNC18(num);
      FUNC19(num);
   }
   else
   {
      FUNC20(0);
      FUNC18(0);
      FUNC19(0);
   }

   return 0;
}