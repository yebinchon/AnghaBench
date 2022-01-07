
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int PHOSPHOR2X_SCALE ;

__attribute__((used)) static void phosphor2x_generic_output(void *data,
      unsigned *out_width, unsigned *out_height,
      unsigned width, unsigned height)
{
   (void)data;
   *out_width = width * PHOSPHOR2X_SCALE;
   *out_height = height * PHOSPHOR2X_SCALE;
}
