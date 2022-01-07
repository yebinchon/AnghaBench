
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* Test; int PSM; } ;
struct TYPE_5__ {scalar_t__ ZTE; } ;


 int* Colours_table ;
 int DMA_CHANNEL_GIF ;
 int D_CTRL_MFD_OFF ;
 int D_CTRL_RCYC_8 ;
 int D_CTRL_RELE_ON ;
 int D_CTRL_STD_OFF ;
 int D_CTRL_STS_UNSPEC ;
 int FALSE ;
 int GS_MODE_NTSC ;
 int GS_PSM_CT32 ;
 int PAD_PORT ;
 int PAD_SLOT ;
 int Sound_Initialise (int*,char**) ;
 int TRUE ;
 int* clut ;
 int dmaKit_chan_init (int ) ;
 int dmaKit_init (int ,int ,int ,int ,int ) ;
 TYPE_2__* gsGlobal ;
 TYPE_2__* gsKit_init_global (int ) ;
 int gsKit_init_screen (TYPE_2__*) ;
 int init_scr () ;
 int padBuf ;
 int padInit (int ) ;
 int padPortOpen (int ,int ,int ) ;
 int timer_initialize () ;

int PLATFORM_Initialise(int *argc, char *argv[])
{

 int i;
 for (i = 0; i < 256; i++) {
  int c = Colours_table[i];


  clut[(i ^ i * 2) & 16 ? i ^ 24 : i] = (c >> 16) + (c & 0xff00) + ((c & 0xff) << 16);
 }

 init_scr();

 gsGlobal = gsKit_init_global(GS_MODE_NTSC);
 dmaKit_init(D_CTRL_RELE_ON, D_CTRL_MFD_OFF, D_CTRL_STS_UNSPEC,
             D_CTRL_STD_OFF, D_CTRL_RCYC_8);
 dmaKit_chan_init(DMA_CHANNEL_GIF);
 gsGlobal->PSM = GS_PSM_CT32;
 gsGlobal->Test->ZTE = 0;
 gsKit_init_screen(gsGlobal);

 padInit(0);
 padPortOpen(PAD_PORT, PAD_SLOT, padBuf);
 return TRUE;
}
