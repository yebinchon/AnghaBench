
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int g_osd_y ;
 int layer_fb ;
 int vout_fbdev_clear_lines (int ,int ,int) ;

void plat_status_msg_clear(void)
{
 vout_fbdev_clear_lines(layer_fb, g_osd_y, 8);
}
