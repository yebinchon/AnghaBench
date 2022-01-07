
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Framework2D_Close () ;
 int Framework_Close () ;
 int directfb_fini () ;
 int giz_log_close () ;

void giz_deinit(void)
{
 Framework2D_Close();
 Framework_Close();




 giz_log_close();
}
