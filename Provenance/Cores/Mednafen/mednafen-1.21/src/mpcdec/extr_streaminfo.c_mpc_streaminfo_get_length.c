
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {double sample_freq; scalar_t__ beg_silence; scalar_t__ samples; } ;
typedef TYPE_1__ mpc_streaminfo ;



double
mpc_streaminfo_get_length(mpc_streaminfo * si)
{
 return (double) (si->samples - si->beg_silence) / si->sample_freq;
}
