
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AM_activateNewScale () ;
 int FRACUNIT ;
 int FixedDiv (int ,int ) ;
 int min_scale_mtof ;
 int scale_ftom ;
 int scale_mtof ;

void AM_minOutWindowScale(void)
{
    scale_mtof = min_scale_mtof;
    scale_ftom = FixedDiv(FRACUNIT, scale_mtof);
    AM_activateNewScale();
}
