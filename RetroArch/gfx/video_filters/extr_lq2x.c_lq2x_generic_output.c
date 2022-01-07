
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int LQ2X_SCALE ;

__attribute__((used)) static void lq2x_generic_output(void *data,
      unsigned *out_width, unsigned *out_height,
      unsigned width, unsigned height)
{
   *out_width = width * LQ2X_SCALE;
   *out_height = height * LQ2X_SCALE;
}
