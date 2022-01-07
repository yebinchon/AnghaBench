
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int main_fb ;
 int printf (char*) ;
 int vout_fbdev_finish (int ) ;
 int xenv_finish () ;

void plat_finish(void)
{
 vout_fbdev_finish(main_fb);
 xenv_finish();

 printf("all done\n");
}
