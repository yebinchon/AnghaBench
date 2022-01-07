
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int layer_fb ;
 int pnd_setup_layer_ (int ,int,int,int,int,int) ;
 int vout_fbdev_get_fd (int ) ;

int pnd_setup_layer(int enabled, int x, int y, int w, int h)
{
 return pnd_setup_layer_(vout_fbdev_get_fd(layer_fb), enabled, x, y, w, h);
}
