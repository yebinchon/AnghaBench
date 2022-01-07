
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FB_MEM_SIZE ;
 int close (int) ;
 int fbdev ;
 int * gp2x_screens ;
 int memset (int ,int ,int ) ;
 int munmap (int ,int ) ;

void vid_pollux_finish(void)
{
 memset(gp2x_screens[0], 0, FB_MEM_SIZE);
 munmap(gp2x_screens[0], FB_MEM_SIZE);
 close(fbdev);
 fbdev = -1;
}
