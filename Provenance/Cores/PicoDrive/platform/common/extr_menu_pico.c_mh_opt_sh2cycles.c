
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int msh2_khz; int ssh2_khz; } ;


 int MA_32XOPT_MSH2_CYCLES ;
 int PBTN_L ;
 int PBTN_LEFT ;
 int PBTN_R ;
 int PBTN_RIGHT ;
 TYPE_1__ currentConfig ;

__attribute__((used)) static int mh_opt_sh2cycles(int id, int keys)
{
 int *khz = (id == MA_32XOPT_MSH2_CYCLES) ?
  &currentConfig.msh2_khz : &currentConfig.ssh2_khz;

 if (keys & (PBTN_LEFT|PBTN_RIGHT))
  *khz += (keys & PBTN_LEFT) ? -50 : 50;
 if (keys & (PBTN_L|PBTN_R))
  *khz += (keys & PBTN_L) ? -500 : 500;

 if (*khz < 1)
  *khz = 1;
 else if (*khz > 0x7fffffff / 1000)
  *khz = 0x7fffffff / 1000;

 return 0;
}
