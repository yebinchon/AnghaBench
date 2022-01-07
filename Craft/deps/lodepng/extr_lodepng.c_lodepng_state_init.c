
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int error; int info_png; int info_raw; int encoder; int decoder; } ;
typedef TYPE_1__ LodePNGState ;


 int lodepng_color_mode_init (int *) ;
 int lodepng_decoder_settings_init (int *) ;
 int lodepng_encoder_settings_init (int *) ;
 int lodepng_info_init (int *) ;

void lodepng_state_init(LodePNGState* state)
{






  lodepng_color_mode_init(&state->info_raw);
  lodepng_info_init(&state->info_png);
  state->error = 1;
}
