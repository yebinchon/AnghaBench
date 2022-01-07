
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ skip_load; int osdcoretype; int videoformattype; int cartpath; int mpegpath; int buppath; int cdpath; int biospath; scalar_t__ regionid; int carttype; int cdcoretype; int sndcoretype; int vidcoretype; int sh2coretype; int percoretype; int m68kcoretype; } ;


 int CART_NONE ;
 int CDCORE_DEFAULT ;
 int M68KCORE_C68K ;
 int OSDCORE_DEFAULT ;
 int PERCORE_GTK ;
 int SH2CORE_DEFAULT ;
 int SNDCORE_DUMMY ;
 int VIDCORE_OGL ;
 int VIDCORE_SOFT ;
 int VIDEOFORMATTYPE_NTSC ;
 int biospath ;
 int buppath ;
 int cartpath ;
 int cdpath ;
 int mpegpath ;
 TYPE_1__ yinit ;

__attribute__((used)) static void yui_settings_init(void) {
 yinit.m68kcoretype = M68KCORE_C68K;
 yinit.percoretype = PERCORE_GTK;
 yinit.sh2coretype = SH2CORE_DEFAULT;



 yinit.vidcoretype = VIDCORE_SOFT;

 yinit.sndcoretype = SNDCORE_DUMMY;
 yinit.cdcoretype = CDCORE_DEFAULT;
 yinit.carttype = CART_NONE;
 yinit.regionid = 0;
 yinit.biospath = biospath;
 yinit.cdpath = cdpath;
 yinit.buppath = buppath;
 yinit.mpegpath = mpegpath;
 yinit.cartpath = cartpath;
        yinit.videoformattype = VIDEOFORMATTYPE_NTSC;
 yinit.osdcoretype = OSDCORE_DEFAULT;
 yinit.skip_load = 0;
}
