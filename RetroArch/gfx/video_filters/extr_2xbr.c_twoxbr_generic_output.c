
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int TWOXBR_SCALE ;

__attribute__((used)) static void twoxbr_generic_output(void *data,
      unsigned *out_width, unsigned *out_height,
      unsigned width, unsigned height)
{
   *out_width = width * TWOXBR_SCALE;
   *out_height = height * TWOXBR_SCALE;
}
