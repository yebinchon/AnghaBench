
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ gain_album; scalar_t__ gain_title; scalar_t__ peak_album; scalar_t__ peak_title; } ;
struct TYPE_5__ {int d; TYPE_1__ si; } ;
typedef TYPE_2__ mpc_demux ;
typedef scalar_t__ mpc_bool_t ;


 int mpc_decoder_scale_output (int ,float) ;
 int pow (int,float) ;

void mpc_set_replay_level(mpc_demux * d, float level, mpc_bool_t use_gain,
        mpc_bool_t use_title, mpc_bool_t clip_prevention)
{
 float peak = (float) ( use_title ? d->si.peak_title : d->si.peak_album );
 float gain = (float) ( use_title ? d->si.gain_title : d->si.gain_album );

 if(!use_gain && !clip_prevention)
  return;

 if(!peak)
  peak = 1.;
 else
  peak = (float) ( (1 << 15) / pow(10, peak / (20 * 256)) );

 if(!gain)
  gain = 1.;
 else
  gain = (float) pow(10, (level - gain / 256) / 20);

 if(clip_prevention && (peak < gain || !use_gain))
  gain = peak;

 mpc_decoder_scale_output(d->d, gain);
}
