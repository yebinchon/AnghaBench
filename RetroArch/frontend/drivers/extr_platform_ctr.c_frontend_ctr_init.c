
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int GFX_BOTTOM ;
 int GFX_TOP ;
 int GSP_BGR8_OES ;
 int GSP_RGB565_OES ;
 int __ctr_patch_services ;
 void* audio_ctr_csnd ;
 void* audio_ctr_dsp ;
 void* audio_null ;
 int cfguInit () ;
 int consoleInit (int ,int *) ;
 scalar_t__ csndInit () ;
 int ctr_check_dspfirm () ;
 scalar_t__* gfxBottomFramebuffers ;
 int gfxInit (int ,int ,int) ;
 int gfxSet3D (int) ;
 int gfxSetFramebufferInfo (int ,int ) ;
 scalar_t__* gfxTopLeftFramebuffers ;
 scalar_t__* gfxTopRightFramebuffers ;
 scalar_t__ linearAlloc (int) ;
 int linearFree (scalar_t__) ;
 int mcuHwcInit () ;
 scalar_t__ ndspInit () ;
 int osSetSpeedupEnable (int) ;
 int ptmuInit () ;
 int svchax_init (int ) ;
 int verbosity_enable () ;

__attribute__((used)) static void frontend_ctr_init(void* data)
{

   (void)data;

   verbosity_enable();

   gfxInit(GSP_BGR8_OES, GSP_RGB565_OES, 0);

   u32 topSize = 400 * 240 * 3;
   u32 bottomSize = 320 * 240 * 2;
   linearFree(gfxTopLeftFramebuffers [0]);
   linearFree(gfxTopLeftFramebuffers [1]);
   linearFree(gfxBottomFramebuffers [0]);
   linearFree(gfxBottomFramebuffers [1]);
   linearFree(gfxTopRightFramebuffers[0]);
   linearFree(gfxTopRightFramebuffers[1]);

   gfxTopLeftFramebuffers [0] = linearAlloc(topSize * 2);
   gfxTopRightFramebuffers[0] = gfxTopLeftFramebuffers[0] + topSize;

   gfxTopLeftFramebuffers [1] = linearAlloc(topSize * 2);
   gfxTopRightFramebuffers[1] = gfxTopLeftFramebuffers[1] + topSize;

   gfxBottomFramebuffers [0] = linearAlloc(bottomSize);
   gfxBottomFramebuffers [1] = linearAlloc(bottomSize);

   gfxSetFramebufferInfo(GFX_TOP, 0);
   gfxSetFramebufferInfo(GFX_BOTTOM, 0);

   gfxSet3D(1);
   consoleInit(GFX_BOTTOM, ((void*)0));


   if (svchax_init)
   {
      osSetSpeedupEnable(0);
      svchax_init(__ctr_patch_services);
   }
   osSetSpeedupEnable(1);

   if (csndInit() != 0)
      audio_ctr_csnd = audio_null;
   ctr_check_dspfirm();
   if (ndspInit() != 0)
      audio_ctr_dsp = audio_null;
   cfguInit();
   ptmuInit();
   mcuHwcInit();

}
