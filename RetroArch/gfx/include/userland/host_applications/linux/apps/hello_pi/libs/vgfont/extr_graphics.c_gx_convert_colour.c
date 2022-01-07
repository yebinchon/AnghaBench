
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int gx_priv_colour_to_paint (int ,float*) ;

void gx_convert_colour(uint32_t colour, float *dest)
{
   gx_priv_colour_to_paint(colour, dest);
}
