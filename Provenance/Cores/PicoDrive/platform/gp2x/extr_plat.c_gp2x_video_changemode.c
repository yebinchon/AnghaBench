
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int gp2x_current_bpp ;
 int gp2x_video_changemode_ll (int,int) ;

void gp2x_video_changemode(int bpp, int is_pal)
{
 gp2x_video_changemode_ll(bpp, is_pal);

 gp2x_current_bpp = bpp < 0 ? -bpp : bpp;
}
