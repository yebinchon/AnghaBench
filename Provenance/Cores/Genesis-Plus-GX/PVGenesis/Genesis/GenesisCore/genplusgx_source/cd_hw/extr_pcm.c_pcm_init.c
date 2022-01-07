
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int blip_t ;
struct TYPE_2__ {int frame_rate; int sample_rate; } ;


 double PCM_SCYCLES_RATIO ;
 int SCD_CLOCK ;
 int SCYCLES_PER_LINE ;
 int ** blip ;
 int blip_set_rates (int *,double,int ) ;
 TYPE_1__ snd ;
 scalar_t__ vdp_pal ;

void pcm_init(blip_t* left, blip_t* right)
{

  double mclk = snd.frame_rate ? (SCYCLES_PER_LINE * (vdp_pal ? 313 : 262) * snd.frame_rate) : SCD_CLOCK;



  blip[0] = left;
  blip[1] = right;
  blip_set_rates(left, mclk / PCM_SCYCLES_RATIO, snd.sample_rate);
  blip_set_rates(right, mclk / PCM_SCYCLES_RATIO, snd.sample_rate);
}
