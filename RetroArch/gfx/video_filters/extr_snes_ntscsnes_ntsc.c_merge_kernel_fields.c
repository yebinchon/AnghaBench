
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int snes_ntsc_rgb_t ;


 size_t burst_size ;
 int rgb_bias ;
 int snes_ntsc_rgb_builder ;

__attribute__((used)) static void merge_kernel_fields( snes_ntsc_rgb_t* io )
{
 int n;
 for ( n = burst_size; n; --n )
 {
  snes_ntsc_rgb_t p0 = io [burst_size * 0] + rgb_bias;
  snes_ntsc_rgb_t p1 = io [burst_size * 1] + rgb_bias;
  snes_ntsc_rgb_t p2 = io [burst_size * 2] + rgb_bias;

  io [burst_size * 0] =
    ((p0 + p1 - ((p0 ^ p1) & snes_ntsc_rgb_builder)) >> 1) - rgb_bias;
  io [burst_size * 1] =
    ((p1 + p2 - ((p1 ^ p2) & snes_ntsc_rgb_builder)) >> 1) - rgb_bias;
  io [burst_size * 2] =
    ((p2 + p0 - ((p2 ^ p0) & snes_ntsc_rgb_builder)) >> 1) - rgb_bias;
  ++io;
 }
}
