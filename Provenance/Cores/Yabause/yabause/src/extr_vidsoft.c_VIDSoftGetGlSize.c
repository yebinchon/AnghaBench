
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int outputheight ;
 int outputwidth ;
 int vdp2height ;
 int vdp2width ;

void VIDSoftGetGlSize(int *width, int *height)
{




   *width = vdp2width;
   *height = vdp2height;

}
