
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int vdp2_interlace ;
 int vdp2height ;
 int vdp2width ;

void VIDSoftGetNativeResolution(int *width, int *height, int* interlace)
{
   *width = vdp2width;
   *height = vdp2height;
   *interlace = vdp2_interlace;
}
