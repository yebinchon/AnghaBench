
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_8__ ;
typedef struct TYPE_11__ TYPE_7__ ;
typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_12__ {void* viTVMode; } ;
struct TYPE_11__ {void* viTVMode; } ;
struct TYPE_10__ {void* viTVMode; } ;
struct TYPE_9__ {int viTVMode; } ;


 int COLOR_BLACK ;
 int FALSE ;
 int FONT_Init () ;
 int GX_TRUE ;
 int HASPECT ;
 scalar_t__ MEM_K0_TO_K1 (int *) ;
 scalar_t__ SYS_AllocateFramebuffer (int *) ;
 int TEX_SIZE ;
 int TV50hz_576i ;
 TYPE_8__ TV60hz_240i ;
 TYPE_7__ TV60hz_240p ;
 TYPE_6__ TV60hz_480i ;
 int VASPECT ;
 int VIDEO_ClearFrameBuffer (TYPE_1__*,int *,int ) ;
 int VIDEO_Configure (TYPE_1__*) ;
 int VIDEO_Flush () ;
 TYPE_1__* VIDEO_GetPreferredMode (int *) ;
 int VIDEO_Init () ;
 int VIDEO_SetBlack (int ) ;
 int VIDEO_SetNextFramebuffer (int *) ;
 int VIDEO_WaitVSync () ;
 int VI_INTERLACE ;
 int VI_NON_INTERLACE ;

 void* VI_TVMODE (int,int ) ;
 void* VI_TVMODE_EURGB60_DS ;
 void* VI_TVMODE_EURGB60_INT ;
 int console_init (int *,int,int,int,int,int) ;
 int gxResetMode (TYPE_1__*,int ) ;
 int gxResetRendering (int) ;
 int gxStart () ;
 void* memalign (int,int) ;
 void* screenshot ;
 void* texturemem ;
 TYPE_1__* vmode ;
 int ** xfb ;

void gx_video_Init(void)
{




  VIDEO_Init();





  vmode = VIDEO_GetPreferredMode(((void*)0));


  switch (vmode->viTVMode >> 2)
  {
    case 128:
      TV60hz_240p.viTVMode = VI_TVMODE_EURGB60_DS;
      TV60hz_240i.viTVMode = VI_TVMODE_EURGB60_INT;
      TV60hz_480i.viTVMode = VI_TVMODE_EURGB60_INT;
      break;

    default:
      TV60hz_240p.viTVMode = VI_TVMODE(vmode->viTVMode >> 2, VI_NON_INTERLACE);
      TV60hz_240i.viTVMode = VI_TVMODE(vmode->viTVMode >> 2, VI_INTERLACE);
      TV60hz_480i.viTVMode = VI_TVMODE(vmode->viTVMode >> 2, VI_INTERLACE);
      break;
  }


  VIDEO_Configure (vmode);


  xfb[0] = (u32 *) MEM_K0_TO_K1((u32 *) SYS_AllocateFramebuffer(&TV50hz_576i));
  xfb[1] = (u32 *) MEM_K0_TO_K1((u32 *) SYS_AllocateFramebuffer(&TV50hz_576i));


  console_init(xfb[0], 20, 64, 640, 574, 574 * 2);


  VIDEO_ClearFrameBuffer(vmode, xfb[0], COLOR_BLACK);
  VIDEO_ClearFrameBuffer(vmode, xfb[1], COLOR_BLACK);


  VIDEO_SetNextFramebuffer(xfb[0]);


  VIDEO_SetBlack(FALSE);


  VIDEO_Flush();


  VIDEO_WaitVSync();
  VIDEO_WaitVSync();


  gxStart();
  gxResetRendering(1);
  gxResetMode(vmode, GX_TRUE);


  FONT_Init();


  texturemem = memalign(32, TEX_SIZE);
  screenshot = memalign(32, HASPECT*VASPECT*4);
}
