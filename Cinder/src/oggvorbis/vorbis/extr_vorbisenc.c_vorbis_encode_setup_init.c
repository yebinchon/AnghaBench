
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_6__ ;
typedef struct TYPE_25__ TYPE_5__ ;
typedef struct TYPE_24__ TYPE_4__ ;
typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;


struct TYPE_23__ {int bitrate_nominal; double bitrate_window; int bitrate_upper; int bitrate_lower; TYPE_6__* codec_setup; } ;
typedef TYPE_3__ vorbis_info ;
struct TYPE_24__ {int floor_mappings; int maps; int psy_noiseguards; int psy_noise_bias_long; int psy_noise_dBsuppress; int psy_noise_bias_trans; int psy_noise_bias_padding; int psy_noise_bias_impulse; int psy_tone_dBsuppress; int psy_noise_compand_long_mapping; int psy_noise_compand; int psy_noise_compand_short_mapping; int psy_tone_adj_long; int psy_tone_0dB; int psy_tone_masteratt; int psy_tone_adj_other; int psy_tone_adj_impulse; int psy_noise_normal_thresh; int * psy_noise_normal_partition; int * psy_noise_normal_start; int stereo_modes; int global_mapping; int global_params; int * floor_mapping_list; int floor_params; int floor_books; int blocksize_long; int blocksize_short; } ;
typedef TYPE_4__ ve_setup_data_template ;
struct TYPE_25__ {int ath_floating_dB; int amplitude_track_dBpersec; int set_in_stone; int impulse_noisetune; int bitrate_av; int bitrate_av_damp; int bitrate_reservoir_bias; scalar_t__ bitrate_reservoir; int bitrate_max; int bitrate_min; scalar_t__ managed; int base_setting; TYPE_1__* block; int trigger_setting; scalar_t__ setup; int impulse_block_p; } ;
typedef TYPE_5__ highlevel_encode_setup ;
struct TYPE_22__ {double avg_rate; int slew_damp; int reservoir_bias; scalar_t__ reservoir_bits; int max_rate; int min_rate; } ;
struct TYPE_26__ {scalar_t__* blocksizes; TYPE_2__ bi; TYPE_5__ hi; } ;
typedef TYPE_6__ codec_setup_info ;
struct TYPE_21__ {int noise_bias_setting; int tone_peaklimit_setting; int noise_compand_setting; int tone_mask_setting; } ;


 int OV_EINVAL ;
 int setting_to_approx_bitrate (TYPE_3__*) ;
 int vorbis_encode_ath_setup (TYPE_3__*,int) ;
 int vorbis_encode_blocksize_setup (TYPE_3__*,int ,int ,int ) ;
 int vorbis_encode_compand_setup (TYPE_3__*,int ,int,int ,int ) ;
 int vorbis_encode_floor_setup (TYPE_3__*,int ,int ,int ,int ) ;
 int vorbis_encode_global_psych_setup (TYPE_3__*,int ,int ,int ) ;
 int vorbis_encode_global_stereo (TYPE_3__*,TYPE_5__*,int ) ;
 int vorbis_encode_map_n_res_setup (TYPE_3__*,int ,int ) ;
 int vorbis_encode_noisebias_setup (TYPE_3__*,int ,int,int ,int ,int ,int) ;
 int vorbis_encode_peak_setup (TYPE_3__*,int ,int,int ) ;
 int vorbis_encode_psyset_setup (TYPE_3__*,int ,int ,int ,int ,int) ;
 int vorbis_encode_tonemask_setup (TYPE_3__*,int ,int,int ,int ,int ) ;

int vorbis_encode_setup_init(vorbis_info *vi){
  int i,i0=0,singleblock=0;
  codec_setup_info *ci=vi->codec_setup;
  ve_setup_data_template *setup=((void*)0);
  highlevel_encode_setup *hi=&ci->hi;

  if(ci==((void*)0))return(OV_EINVAL);
  if(!hi->impulse_block_p)i0=1;


  if(hi->ath_floating_dB>-80)hi->ath_floating_dB=-80;
  if(hi->ath_floating_dB<-200)hi->ath_floating_dB=-200;



  if(hi->amplitude_track_dBpersec>0.)hi->amplitude_track_dBpersec=0.;
  if(hi->amplitude_track_dBpersec<-99999.)hi->amplitude_track_dBpersec=-99999.;



  setup=(ve_setup_data_template *)hi->setup;
  if(setup==((void*)0))return(OV_EINVAL);

  hi->set_in_stone=1;




  vorbis_encode_blocksize_setup(vi,hi->base_setting,
                                setup->blocksize_short,
                                setup->blocksize_long);
  if(ci->blocksizes[0]==ci->blocksizes[1])singleblock=1;



  for(i=0;i<setup->floor_mappings;i++)
    vorbis_encode_floor_setup(vi,hi->base_setting,
                              setup->floor_books,
                              setup->floor_params,
                              setup->floor_mapping_list[i]);


  vorbis_encode_global_psych_setup(vi,hi->trigger_setting,
                                   setup->global_params,
                                   setup->global_mapping);
  vorbis_encode_global_stereo(vi,hi,setup->stereo_modes);


  vorbis_encode_psyset_setup(vi,hi->base_setting,
                             setup->psy_noise_normal_start[0],
                             setup->psy_noise_normal_partition[0],
                             setup->psy_noise_normal_thresh,
                             0);
  vorbis_encode_psyset_setup(vi,hi->base_setting,
                             setup->psy_noise_normal_start[0],
                             setup->psy_noise_normal_partition[0],
                             setup->psy_noise_normal_thresh,
                             1);
  if(!singleblock){
    vorbis_encode_psyset_setup(vi,hi->base_setting,
                               setup->psy_noise_normal_start[1],
                               setup->psy_noise_normal_partition[1],
                                    setup->psy_noise_normal_thresh,
                               2);
    vorbis_encode_psyset_setup(vi,hi->base_setting,
                               setup->psy_noise_normal_start[1],
                               setup->psy_noise_normal_partition[1],
                               setup->psy_noise_normal_thresh,
                               3);
  }


  vorbis_encode_tonemask_setup(vi,hi->block[i0].tone_mask_setting,0,
                               setup->psy_tone_masteratt,
                               setup->psy_tone_0dB,
                               setup->psy_tone_adj_impulse);
  vorbis_encode_tonemask_setup(vi,hi->block[1].tone_mask_setting,1,
                               setup->psy_tone_masteratt,
                               setup->psy_tone_0dB,
                               setup->psy_tone_adj_other);
  if(!singleblock){
    vorbis_encode_tonemask_setup(vi,hi->block[2].tone_mask_setting,2,
                                 setup->psy_tone_masteratt,
                                 setup->psy_tone_0dB,
                                 setup->psy_tone_adj_other);
    vorbis_encode_tonemask_setup(vi,hi->block[3].tone_mask_setting,3,
                                 setup->psy_tone_masteratt,
                                 setup->psy_tone_0dB,
                                 setup->psy_tone_adj_long);
  }


  vorbis_encode_compand_setup(vi,hi->block[i0].noise_compand_setting,0,
                              setup->psy_noise_compand,
                              setup->psy_noise_compand_short_mapping);
  vorbis_encode_compand_setup(vi,hi->block[1].noise_compand_setting,1,
                              setup->psy_noise_compand,
                              setup->psy_noise_compand_short_mapping);
  if(!singleblock){
    vorbis_encode_compand_setup(vi,hi->block[2].noise_compand_setting,2,
                                setup->psy_noise_compand,
                                setup->psy_noise_compand_long_mapping);
    vorbis_encode_compand_setup(vi,hi->block[3].noise_compand_setting,3,
                                setup->psy_noise_compand,
                                setup->psy_noise_compand_long_mapping);
  }


  vorbis_encode_peak_setup(vi,hi->block[i0].tone_peaklimit_setting,0,
                           setup->psy_tone_dBsuppress);
  vorbis_encode_peak_setup(vi,hi->block[1].tone_peaklimit_setting,1,
                           setup->psy_tone_dBsuppress);
  if(!singleblock){
    vorbis_encode_peak_setup(vi,hi->block[2].tone_peaklimit_setting,2,
                             setup->psy_tone_dBsuppress);
    vorbis_encode_peak_setup(vi,hi->block[3].tone_peaklimit_setting,3,
                             setup->psy_tone_dBsuppress);
  }


  vorbis_encode_noisebias_setup(vi,hi->block[i0].noise_bias_setting,0,
                                setup->psy_noise_dBsuppress,
                                setup->psy_noise_bias_impulse,
                                setup->psy_noiseguards,
                                (i0==0?hi->impulse_noisetune:0.));
  vorbis_encode_noisebias_setup(vi,hi->block[1].noise_bias_setting,1,
                                setup->psy_noise_dBsuppress,
                                setup->psy_noise_bias_padding,
                                setup->psy_noiseguards,0.);
  if(!singleblock){
    vorbis_encode_noisebias_setup(vi,hi->block[2].noise_bias_setting,2,
                                  setup->psy_noise_dBsuppress,
                                  setup->psy_noise_bias_trans,
                                  setup->psy_noiseguards,0.);
    vorbis_encode_noisebias_setup(vi,hi->block[3].noise_bias_setting,3,
                                  setup->psy_noise_dBsuppress,
                                  setup->psy_noise_bias_long,
                                  setup->psy_noiseguards,0.);
  }

  vorbis_encode_ath_setup(vi,0);
  vorbis_encode_ath_setup(vi,1);
  if(!singleblock){
    vorbis_encode_ath_setup(vi,2);
    vorbis_encode_ath_setup(vi,3);
  }

  vorbis_encode_map_n_res_setup(vi,hi->base_setting,setup->maps);


  if(hi->bitrate_av>0)
    vi->bitrate_nominal=hi->bitrate_av;
  else{
    vi->bitrate_nominal=setting_to_approx_bitrate(vi);
  }

  vi->bitrate_lower=hi->bitrate_min;
  vi->bitrate_upper=hi->bitrate_max;
  if(hi->bitrate_av)
    vi->bitrate_window=(double)hi->bitrate_reservoir/hi->bitrate_av;
  else
    vi->bitrate_window=0.;

  if(hi->managed){
    ci->bi.avg_rate=hi->bitrate_av;
    ci->bi.min_rate=hi->bitrate_min;
    ci->bi.max_rate=hi->bitrate_max;

    ci->bi.reservoir_bits=hi->bitrate_reservoir;
    ci->bi.reservoir_bias=
      hi->bitrate_reservoir_bias;

    ci->bi.slew_damp=hi->bitrate_av_damp;

  }

  return(0);

}
