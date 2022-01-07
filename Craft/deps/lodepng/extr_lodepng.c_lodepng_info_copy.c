
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {int color; } ;
typedef TYPE_1__ LodePNGInfo ;


 int CERROR_TRY_RETURN (int ) ;
 int LodePNGIText_copy (TYPE_1__*,TYPE_1__ const*) ;
 int LodePNGText_copy (TYPE_1__*,TYPE_1__ const*) ;
 int LodePNGUnknownChunks_copy (TYPE_1__*,TYPE_1__ const*) ;
 int LodePNGUnknownChunks_init (TYPE_1__*) ;
 int lodepng_color_mode_copy (int *,int *) ;
 int lodepng_color_mode_init (int *) ;
 int lodepng_info_cleanup (TYPE_1__*) ;

unsigned lodepng_info_copy(LodePNGInfo* dest, const LodePNGInfo* source)
{
  lodepng_info_cleanup(dest);
  *dest = *source;
  lodepng_color_mode_init(&dest->color);
  CERROR_TRY_RETURN(lodepng_color_mode_copy(&dest->color, &source->color));
  return 0;
}
