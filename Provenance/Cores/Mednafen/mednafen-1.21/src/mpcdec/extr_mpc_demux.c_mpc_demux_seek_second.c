
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int mpc_status ;
typedef int mpc_int64_t ;
struct TYPE_5__ {scalar_t__ sample_freq; } ;
struct TYPE_6__ {TYPE_1__ si; } ;
typedef TYPE_2__ mpc_demux ;


 int mpc_demux_seek_sample (TYPE_2__*,int ) ;

mpc_status mpc_demux_seek_second(mpc_demux * d, double seconds)
{
 return mpc_demux_seek_sample(d, (mpc_int64_t)(seconds * (double)d->si.sample_freq + 0.5));
}
