
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AM_clearMarks () ;
 int AM_findMinMaxBoundaries () ;
 double FRACUNIT ;
 void* FixedDiv (double,int) ;
 int f_h ;
 int f_w ;
 scalar_t__ f_x ;
 scalar_t__ f_y ;
 int finit_height ;
 int finit_width ;
 scalar_t__ leveljuststarted ;
 int max_scale_mtof ;
 double min_scale_mtof ;
 void* scale_ftom ;
 int scale_mtof ;

void AM_LevelInit(void)
{
    leveljuststarted = 0;

    f_x = f_y = 0;
    f_w = finit_width;
    f_h = finit_height;

    AM_clearMarks();

    AM_findMinMaxBoundaries();
    scale_mtof = FixedDiv(min_scale_mtof, (int) (0.7*FRACUNIT));
    if (scale_mtof > max_scale_mtof)
 scale_mtof = min_scale_mtof;
    scale_ftom = FixedDiv(FRACUNIT, scale_mtof);
}
