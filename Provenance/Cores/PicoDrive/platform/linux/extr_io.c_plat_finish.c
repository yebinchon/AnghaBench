
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free (int ) ;
 int g_screen_ptr ;
 int vout_fbdev_finish () ;

void plat_finish(void)
{



 free(g_screen_ptr);

}
