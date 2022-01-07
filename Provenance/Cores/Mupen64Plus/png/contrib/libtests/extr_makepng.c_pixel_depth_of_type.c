
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int channels_of_type (int) ;

__attribute__((used)) static unsigned int
pixel_depth_of_type(int color_type, int bit_depth)
{
   return channels_of_type(color_type) * bit_depth;
}
