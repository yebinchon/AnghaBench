
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int f_h ;
 int f_w ;
 int* fb ;

void AM_drawCrosshair(int color)
{
    fb[(f_w*(f_h+1))/2] = color;

}
