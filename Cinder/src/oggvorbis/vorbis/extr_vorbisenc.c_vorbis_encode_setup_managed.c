
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {TYPE_3__* codec_setup; } ;
typedef TYPE_1__ vorbis_info ;
struct TYPE_7__ {long req; int coupling_p; int managed; long bitrate_min; long bitrate_max; double bitrate_av; float bitrate_av_damp; long bitrate_reservoir; double bitrate_reservoir_bias; int setup; int base_setting; } ;
typedef TYPE_2__ highlevel_encode_setup ;
struct TYPE_8__ {TYPE_2__ hi; } ;
typedef TYPE_3__ codec_setup_info ;


 int OV_EIMPL ;
 int OV_EINVAL ;
 int get_setup_template (long,long,long,int,int *) ;
 int vorbis_encode_setup_setting (TYPE_1__*,long,long) ;

int vorbis_encode_setup_managed(vorbis_info *vi,
                                long channels,
                                long rate,

                                long max_bitrate,
                                long nominal_bitrate,
                                long min_bitrate){

  codec_setup_info *ci=vi->codec_setup;
  highlevel_encode_setup *hi=&ci->hi;
  double tnominal=nominal_bitrate;

  if(nominal_bitrate<=0.){
    if(max_bitrate>0.){
      if(min_bitrate>0.)
        nominal_bitrate=(max_bitrate+min_bitrate)*.5;
      else
        nominal_bitrate=max_bitrate*.875;
    }else{
      if(min_bitrate>0.){
        nominal_bitrate=min_bitrate;
      }else{
        return(OV_EINVAL);
      }
    }
  }

  hi->req=nominal_bitrate;
  hi->setup=get_setup_template(channels,rate,nominal_bitrate,1,&hi->base_setting);
  if(!hi->setup)return OV_EIMPL;

  vorbis_encode_setup_setting(vi,channels,rate);


  hi->coupling_p=1;
  hi->managed=1;
  hi->bitrate_min=min_bitrate;
  hi->bitrate_max=max_bitrate;
  hi->bitrate_av=tnominal;
  hi->bitrate_av_damp=1.5f;
  hi->bitrate_reservoir=nominal_bitrate*2;
  hi->bitrate_reservoir_bias=.1;

  return(0);

}
