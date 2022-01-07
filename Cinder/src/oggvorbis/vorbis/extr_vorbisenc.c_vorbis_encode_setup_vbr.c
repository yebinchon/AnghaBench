
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {TYPE_3__* codec_setup; } ;
typedef TYPE_1__ vorbis_info ;
struct TYPE_7__ {float req; int coupling_p; scalar_t__ managed; int setup; int base_setting; } ;
typedef TYPE_2__ highlevel_encode_setup ;
struct TYPE_8__ {TYPE_2__ hi; } ;
typedef TYPE_3__ codec_setup_info ;


 int OV_EIMPL ;
 int get_setup_template (long,long,float,int ,int *) ;
 int vorbis_encode_setup_setting (TYPE_1__*,long,long) ;

int vorbis_encode_setup_vbr(vorbis_info *vi,
                            long channels,
                            long rate,
                            float quality){
  codec_setup_info *ci=vi->codec_setup;
  highlevel_encode_setup *hi=&ci->hi;

  quality+=.0000001;
  if(quality>=1.)quality=.9999;

  hi->req=quality;
  hi->setup=get_setup_template(channels,rate,quality,0,&hi->base_setting);
  if(!hi->setup)return OV_EIMPL;

  vorbis_encode_setup_setting(vi,channels,rate);
  hi->managed=0;
  hi->coupling_p=1;

  return 0;
}
