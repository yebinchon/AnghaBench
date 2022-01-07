
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int ampmax; int * gi; int channels; } ;
typedef TYPE_1__ vorbis_look_psy_global ;
typedef int vorbis_info_psy_global ;
struct TYPE_8__ {int channels; TYPE_3__* codec_setup; } ;
typedef TYPE_2__ vorbis_info ;
struct TYPE_9__ {int psy_g_param; } ;
typedef TYPE_3__ codec_setup_info ;


 TYPE_1__* _ogg_calloc (int,int) ;

vorbis_look_psy_global *_vp_global_look(vorbis_info *vi){
  codec_setup_info *ci=vi->codec_setup;
  vorbis_info_psy_global *gi=&ci->psy_g_param;
  vorbis_look_psy_global *look=_ogg_calloc(1,sizeof(*look));

  look->channels=vi->channels;

  look->ampmax=-9999.;
  look->gi=gi;
  return(look);
}
