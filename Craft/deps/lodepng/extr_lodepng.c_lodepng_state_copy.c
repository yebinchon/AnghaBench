
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ error; int info_png; int info_raw; } ;
typedef TYPE_1__ LodePNGState ;


 scalar_t__ lodepng_color_mode_copy (int *,int *) ;
 int lodepng_color_mode_init (int *) ;
 scalar_t__ lodepng_info_copy (int *,int *) ;
 int lodepng_info_init (int *) ;
 int lodepng_state_cleanup (TYPE_1__*) ;

void lodepng_state_copy(LodePNGState* dest, const LodePNGState* source)
{
  lodepng_state_cleanup(dest);
  *dest = *source;
  lodepng_color_mode_init(&dest->info_raw);
  lodepng_info_init(&dest->info_png);
  dest->error = lodepng_color_mode_copy(&dest->info_raw, &source->info_raw); if(dest->error) return;
  dest->error = lodepng_info_copy(&dest->info_png, &source->info_png); if(dest->error) return;
}
