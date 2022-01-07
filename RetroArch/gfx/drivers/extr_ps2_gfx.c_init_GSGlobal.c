
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {void* PrimAlphaEnable; void* ZBuffering; void* DoubleBuffering; int PSMZ; int PSM; int Height; int Width; int Field; int Interlace; int Mode; } ;
typedef TYPE_1__ GSGLOBAL ;


 int DMA_CHANNEL_GIF ;
 int D_CTRL_MFD_OFF ;
 int D_CTRL_RCYC_8 ;
 int D_CTRL_RELE_OFF ;
 int D_CTRL_STD_OFF ;
 int D_CTRL_STS_UNSPEC ;
 int GS_BLACK ;
 int GS_FIELD ;
 int GS_INTERLACED ;
 int GS_MODE_NTSC ;
 int GS_ONESHOT ;
 int GS_PSMZ_16 ;
 int GS_PSM_CT16 ;
 void* GS_SETTING_OFF ;
 int NTSC_HEIGHT ;
 int NTSC_WIDTH ;
 int dmaKit_chan_init (int) ;
 int dmaKit_init (int ,int ,int ,int ,int ,int) ;
 int gsKit_clear (TYPE_1__*,int ) ;
 TYPE_1__* gsKit_init_global () ;
 int gsKit_init_screen (TYPE_1__*) ;
 int gsKit_mode_switch (TYPE_1__*,int ) ;

__attribute__((used)) static GSGLOBAL *init_GSGlobal(void)
{
   GSGLOBAL *gsGlobal = gsKit_init_global();

   gsGlobal->Mode = GS_MODE_NTSC;
   gsGlobal->Interlace = GS_INTERLACED;
   gsGlobal->Field = GS_FIELD;
   gsGlobal->Width = NTSC_WIDTH;
   gsGlobal->Height = NTSC_HEIGHT;

   gsGlobal->PSM = GS_PSM_CT16;
   gsGlobal->PSMZ = GS_PSMZ_16;
   gsGlobal->DoubleBuffering = GS_SETTING_OFF;
   gsGlobal->ZBuffering = GS_SETTING_OFF;
   gsGlobal->PrimAlphaEnable = GS_SETTING_OFF;

   dmaKit_init(D_CTRL_RELE_OFF,D_CTRL_MFD_OFF, D_CTRL_STS_UNSPEC,
               D_CTRL_STD_OFF, D_CTRL_RCYC_8, 1 << DMA_CHANNEL_GIF);


   dmaKit_chan_init(DMA_CHANNEL_GIF);

   gsKit_init_screen(gsGlobal);
   gsKit_mode_switch(gsGlobal, GS_ONESHOT);
   gsKit_clear(gsGlobal, GS_BLACK);

   return gsGlobal;
}
