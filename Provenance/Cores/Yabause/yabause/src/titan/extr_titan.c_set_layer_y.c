
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ vdp2_interlace ;

void set_layer_y(const int start_line, int * layer_y)
{
   if (vdp2_interlace)
      *layer_y = start_line / 2;
   else
      *layer_y = start_line;
}
