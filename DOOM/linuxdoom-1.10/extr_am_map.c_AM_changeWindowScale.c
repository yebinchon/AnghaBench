
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AM_activateNewScale () ;
 int AM_maxOutWindowScale () ;
 int AM_minOutWindowScale () ;
 int FRACUNIT ;
 int FixedDiv (int ,scalar_t__) ;
 scalar_t__ FixedMul (scalar_t__,int ) ;
 scalar_t__ max_scale_mtof ;
 scalar_t__ min_scale_mtof ;
 int mtof_zoommul ;
 int scale_ftom ;
 scalar_t__ scale_mtof ;

void AM_changeWindowScale(void)
{


    scale_mtof = FixedMul(scale_mtof, mtof_zoommul);
    scale_ftom = FixedDiv(FRACUNIT, scale_mtof);

    if (scale_mtof < min_scale_mtof)
 AM_minOutWindowScale();
    else if (scale_mtof > max_scale_mtof)
 AM_maxOutWindowScale();
    else
 AM_activateNewScale();
}
