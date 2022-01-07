
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RoqContext ;


 int apply_motion_generic (int *,int,int,int,int,int) ;

void ff_apply_motion_4x4(RoqContext *ri, int x, int y,
                             int deltax, int deltay)
{
    apply_motion_generic(ri, x, y, deltax, deltay, 4);
}
