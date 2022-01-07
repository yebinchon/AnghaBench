
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int f_h ;
 int f_w ;
 int fb ;
 int memset (int ,int,int) ;

void AM_clearFB(int color)
{
    memset(fb, color, f_w*f_h);
}
