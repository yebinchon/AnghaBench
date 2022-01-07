
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int dirtyPal; } ;
struct TYPE_6__ {TYPE_1__ m; } ;
struct TYPE_5__ {scalar_t__ scaling; } ;


 int EmuScanSlowBegin ;
 int EmuScanSlowEnd ;
 int GU_DIRECT ;
 int GU_LINEAR ;
 int GU_NEAREST ;
 int GU_PSM_5650 ;
 int GU_PSM_T8 ;
 int GU_TCC_RGB ;
 int GU_TFX_REPLACE ;
 int PDF_NONE ;
 TYPE_3__ Pico ;
 int PicoDrawSetCallbacks (int ,int ) ;
 int PicoDrawSetOutFormat (int ,int ) ;
 scalar_t__ VRAM_STUFF ;
 scalar_t__ blit_16bit_mode ;
 TYPE_2__ currentConfig ;
 scalar_t__ dynamic_palette ;
 int guCmdList ;
 int* localPal ;
 int sceGuClutMode (int ,int ,int,int ) ;
 int sceGuFinish () ;
 int sceGuStart (int ,int ) ;
 int sceGuSync (int ,int ) ;
 int sceGuTexFilter (int ,int ) ;
 int sceGuTexFunc (int ,int ) ;
 int sceGuTexImage (int ,int,int,int,char*) ;
 int sceGuTexMode (int ,int ,int ,int ) ;
 int sceGuTexOffset (float,float) ;
 int sceGuTexScale (float,float) ;
 int set_scaling_params () ;

__attribute__((used)) static void vidResetMode(void)
{

 sceGuSync(0,0);
 sceGuStart(GU_DIRECT, guCmdList);

 sceGuClutMode(GU_PSM_5650,0,0xff,0);
 sceGuTexMode(GU_PSM_T8,0,0,0);
 sceGuTexFunc(GU_TFX_REPLACE,GU_TCC_RGB);
 if (currentConfig.scaling)
      sceGuTexFilter(GU_LINEAR, GU_LINEAR);
 else sceGuTexFilter(GU_NEAREST, GU_NEAREST);
 sceGuTexScale(1.0f,1.0f);
 sceGuTexOffset(0.0f,0.0f);

 sceGuTexImage(0,512,512,512,(char *)VRAM_STUFF + 16);


 PicoDrawSetOutFormat(PDF_NONE, 0);
 PicoDrawSetCallbacks(EmuScanSlowBegin, EmuScanSlowEnd);

 localPal[0xe0] = 0;
 localPal[0xf0] = 0x001f;
 Pico.m.dirtyPal = 1;
 blit_16bit_mode = dynamic_palette = 0;

 sceGuFinish();
 set_scaling_params();
 sceGuSync(0,0);
}
