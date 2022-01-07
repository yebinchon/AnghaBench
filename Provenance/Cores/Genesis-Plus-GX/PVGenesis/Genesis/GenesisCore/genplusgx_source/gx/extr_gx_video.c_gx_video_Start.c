
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int sms_ntsc_t ;
typedef int md_ntsc_t ;
struct TYPE_7__ {int x; int changed; } ;
struct TYPE_12__ {TYPE_1__ viewport; } ;
struct TYPE_11__ {double gamma; int tv_mode; int render; int overscan; int ntsc; scalar_t__ cd_leds; scalar_t__* gun_cursor; TYPE_2__* input; int gg_extra; scalar_t__ vsync; int trap; } ;
struct TYPE_10__ {scalar_t__* dev; scalar_t__* system; } ;
struct TYPE_9__ {int viTVMode; int xfbMode; } ;
struct TYPE_8__ {scalar_t__ device; } ;


 int CD_access_off_png ;
 int CD_access_on_png ;
 int CD_ready_off_png ;
 int CD_ready_on_png ;
 int Crosshair_p1_png ;
 int Crosshair_p2_png ;
 scalar_t__ DEVICE_LIGHTGUN ;
 int MAX_DEVICES ;
 scalar_t__ NO_DEVICE ;
 scalar_t__ SYSTEM_GG ;
 scalar_t__ SYSTEM_LIGHTPHASER ;
 scalar_t__ SYSTEM_MCD ;
 int VIDEO_Flush () ;
 int VIDEO_SetGamma (int) ;
 int VIDEO_SetPostRetraceCallback (int ) ;
 int VIDEO_SetTrapFilter (int ) ;
 int VIDEO_WaitVSync () ;
 int VI_TVMODE_NTSC_PROG ;
 int VI_XFBMODE_DF ;
 int VI_XFBMODE_SF ;
 TYPE_6__ bitmap ;
 void*** cd_leds ;
 TYPE_5__ config ;
 void** crosshair ;
 int gc_pal ;
 int gxResetRendering (int ) ;
 void* gxTextureOpenPNG (int ,int ) ;
 TYPE_4__ input ;
 int * md_ntsc ;
 int md_ntsc_composite ;
 int md_ntsc_init (int *,int *) ;
 int md_ntsc_rgb ;
 int md_ntsc_svideo ;
 scalar_t__ memalign (int,int) ;
 int * sms_ntsc ;
 int sms_ntsc_composite ;
 int sms_ntsc_init (int *,int *) ;
 int sms_ntsc_rgb ;
 int sms_ntsc_svideo ;
 scalar_t__ system_hw ;
 TYPE_3__** tvmodes ;
 int vdp_pal ;
 int vi_callback ;
 scalar_t__ video_sync ;

void gx_video_Start(void)
{






  if ((config.tv_mode == 1) || ((config.tv_mode == 2) && vdp_pal))
  {

    gc_pal = 1;
  }
  else
  {

    gc_pal = 0;
  }


  if (config.vsync && (gc_pal == vdp_pal))
  {

    VIDEO_SetPostRetraceCallback(vi_callback);
    VIDEO_Flush();
  }


  if (config.render == 2)
  {
    tvmodes[2]->viTVMode = VI_TVMODE_NTSC_PROG;
    tvmodes[2]->xfbMode = VI_XFBMODE_SF;
  }
  else if (config.render == 1)
  {
    tvmodes[2]->viTVMode = tvmodes[0]->viTVMode & ~3;
    tvmodes[2]->xfbMode = VI_XFBMODE_DF;
  }


  if ((system_hw == SYSTEM_GG) && !config.gg_extra)
  {
    bitmap.viewport.x = (config.overscan & 2) ? 14 : -48;
  }
  else
  {
    bitmap.viewport.x = (config.overscan & 2) * 7;
  }


  bitmap.viewport.changed = 3;


  if (config.ntsc)
  {

    if (!sms_ntsc)
    {
      sms_ntsc = (sms_ntsc_t *)memalign(32,sizeof(sms_ntsc_t));
    }
    if (!md_ntsc)
    {
      md_ntsc = (md_ntsc_t *)memalign(32,sizeof(md_ntsc_t));
    }


    switch (config.ntsc)
    {
      case 1:
        sms_ntsc_init(sms_ntsc, &sms_ntsc_composite);
        md_ntsc_init(md_ntsc, &md_ntsc_composite);
        break;
      case 2:
        sms_ntsc_init(sms_ntsc, &sms_ntsc_svideo);
        md_ntsc_init(md_ntsc, &md_ntsc_svideo);
        break;
      case 3:
        sms_ntsc_init(sms_ntsc, &sms_ntsc_rgb);
        md_ntsc_init(md_ntsc, &md_ntsc_rgb);
        break;
    }
  }


  int i, player = 0;
  for (i=0; i<MAX_DEVICES; i++)
  {

    if (input.dev[i] == DEVICE_LIGHTGUN)
    {

      if (config.input[player].device >= 0)
      {
        if ((i == 0) || ((i == 4) && (input.system[1] != SYSTEM_LIGHTPHASER)))
        {

          if (config.gun_cursor[0])
          {
            crosshair[0] = gxTextureOpenPNG(Crosshair_p1_png,0);
          }
        }
        else
        {

          if (config.gun_cursor[1])
          {
            crosshair[1] = gxTextureOpenPNG(Crosshair_p2_png,0);
          }
        }
      }
    }


    if (input.dev[i] != NO_DEVICE)
    {

      player++;
    }
  }


  if (system_hw == SYSTEM_MCD)
  {
    if (config.cd_leds)
    {
      cd_leds[0][0] = gxTextureOpenPNG(CD_access_off_png,0);
      cd_leds[0][1] = gxTextureOpenPNG(CD_access_on_png,0);
      cd_leds[1][0] = gxTextureOpenPNG(CD_ready_off_png,0);
      cd_leds[1][1] = gxTextureOpenPNG(CD_ready_on_png,0);
    }
  }


  gxResetRendering(0);


  video_sync = 0;
  VIDEO_WaitVSync();
}
