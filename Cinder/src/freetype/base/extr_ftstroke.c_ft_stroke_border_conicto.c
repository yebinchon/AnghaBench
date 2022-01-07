
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ start; int num_points; int movable; scalar_t__* tags; int * points; } ;
typedef int FT_Vector ;
typedef TYPE_1__* FT_StrokeBorder ;
typedef int FT_Error ;
typedef scalar_t__ FT_Byte ;


 int FALSE ;
 int FT_ASSERT (int) ;
 scalar_t__ FT_STROKE_TAG_ON ;
 int ft_stroke_border_grow (TYPE_1__*,int) ;

__attribute__((used)) static FT_Error
  ft_stroke_border_conicto( FT_StrokeBorder border,
                            FT_Vector* control,
                            FT_Vector* to )
  {
    FT_Error error;


    FT_ASSERT( border->start >= 0 );

    error = ft_stroke_border_grow( border, 2 );
    if ( !error )
    {
      FT_Vector* vec = border->points + border->num_points;
      FT_Byte* tag = border->tags + border->num_points;


      vec[0] = *control;
      vec[1] = *to;

      tag[0] = 0;
      tag[1] = FT_STROKE_TAG_ON;

      border->num_points += 2;
    }

    border->movable = FALSE;

    return error;
  }
