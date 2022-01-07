
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int info_png; int info_raw; } ;
typedef TYPE_1__ LodePNGState ;


 int lodepng_color_mode_cleanup (int *) ;
 int lodepng_info_cleanup (int *) ;

void lodepng_state_cleanup(LodePNGState* state)
{
  lodepng_color_mode_cleanup(&state->info_raw);
  lodepng_info_cleanup(&state->info_png);
}
