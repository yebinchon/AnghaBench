
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int max_band; int channels; scalar_t__ sample_freq; } ;
typedef TYPE_1__ mpc_streaminfo ;
typedef int mpc_status ;


 int MPC_STATUS_FAIL ;
 int MPC_STATUS_OK ;

__attribute__((used)) static mpc_status check_streaminfo(mpc_streaminfo * si)
{
 if (si->max_band == 0 || si->max_band >= 32
     || si->channels > 2 || si->channels == 0 || si->sample_freq == 0)
  return MPC_STATUS_FAIL;
 return MPC_STATUS_OK;
}
