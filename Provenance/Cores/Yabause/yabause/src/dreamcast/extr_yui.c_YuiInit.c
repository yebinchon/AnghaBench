
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int sh2coretype; scalar_t__ skip_load; scalar_t__ basetime; scalar_t__ clocksync; int videoformattype; scalar_t__ frameskip; int * cartpath; int * mpegpath; int * buppath; int * cdpath; int * biospath; int regionid; int carttype; int cdcoretype; int sndcoretype; int m68kcoretype; int vidcoretype; int percoretype; } ;
typedef TYPE_1__ yabauseinit_struct ;
struct TYPE_5__ {int (* HandleEvents ) () ;} ;


 int CART_NONE ;
 int CDCORE_ARCH ;
 int M68KCORE_C68K ;
 int PERCORE_DC ;
 TYPE_3__* PERCore ;
 int REGION_AUTODETECT ;
 int SNDCORE_DUMMY ;
 int VIDCORE_DC ;
 int VIDEOFORMATTYPE_NTSC ;
 scalar_t__ YabauseInit (TYPE_1__*) ;
 int * bios ;
 scalar_t__ emulate_bios ;
 int stub1 () ;

int YuiInit(int sh2core) {
    yabauseinit_struct yinit;

    yinit.percoretype = PERCORE_DC;
    yinit.sh2coretype = sh2core;
    yinit.vidcoretype = VIDCORE_DC;
    yinit.m68kcoretype = M68KCORE_C68K;
    yinit.sndcoretype = SNDCORE_DUMMY;
    yinit.cdcoretype = CDCORE_ARCH;
    yinit.carttype = CART_NONE;
    yinit.regionid = REGION_AUTODETECT;
    yinit.biospath = emulate_bios ? ((void*)0) : bios;
    yinit.cdpath = ((void*)0);
    yinit.buppath = ((void*)0);
    yinit.mpegpath = ((void*)0);
    yinit.cartpath = ((void*)0);
    yinit.frameskip = 0;
    yinit.videoformattype = VIDEOFORMATTYPE_NTSC;
    yinit.clocksync = 0;
    yinit.basetime = 0;
    yinit.skip_load = 0;

    if(YabauseInit(&yinit) != 0)
      return -1;

    for(;;) {
        PERCore->HandleEvents();
    }

    return 0;
}
