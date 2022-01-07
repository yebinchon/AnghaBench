
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ start; int num_points; int movable; int * tags; int * points; } ;
typedef int FT_Vector ;
typedef TYPE_1__* FT_StrokeBorder ;
typedef int FT_Error ;
typedef int FT_Byte ;


 int FALSE ;
 int FT_ASSERT (int) ;
 int FT_STROKE_TAG_CUBIC ;
 int FT_STROKE_TAG_ON ;
 int ft_stroke_border_grow (TYPE_1__*,int) ;

__attribute__((used)) static FT_Error
  ft_stroke_border_cubicto( FT_StrokeBorder border,
                            FT_Vector* control1,
                            FT_Vector* control2,
                            FT_Vector* to )
  {
    FT_Error error;


    FT_ASSERT( border->start >= 0 );

    error = ft_stroke_border_grow( border, 3 );
    if ( !error )
    {
      FT_Vector* vec = border->points + border->num_points;
      FT_Byte* tag = border->tags + border->num_points;


      vec[0] = *control1;
      vec[1] = *control2;
      vec[2] = *to;

      tag[0] = FT_STROKE_TAG_CUBIC;
      tag[1] = FT_STROKE_TAG_CUBIC;
      tag[2] = FT_STROKE_TAG_ON;

      border->num_points += 3;
    }

    border->movable = FALSE;

    return error;
  }
