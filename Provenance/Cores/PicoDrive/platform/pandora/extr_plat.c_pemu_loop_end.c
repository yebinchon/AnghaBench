
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int g_layer_h ;
 int g_layer_w ;
 int g_layer_x ;
 int g_layer_y ;
 int pemu_forced_frame (int ,int) ;
 int pnd_setup_layer (int ,int ,int ,int ,int ) ;

void pemu_loop_end(void)
{

 pemu_forced_frame(0, 1);

 pnd_setup_layer(0, g_layer_x, g_layer_y, g_layer_w, g_layer_h);
}
