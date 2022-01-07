
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ format; int outline; } ;
struct TYPE_5__ {scalar_t__ glyph_format; } ;
typedef TYPE_1__* FT_Renderer ;
typedef TYPE_2__* FT_GlyphSlot ;
typedef int FT_BBox ;


 int FT_Outline_Get_CBox (int *,int *) ;
 int FT_ZERO (int *) ;

__attribute__((used)) static void
  ft_smooth_get_cbox( FT_Renderer render,
                      FT_GlyphSlot slot,
                      FT_BBox* cbox )
  {
    FT_ZERO( cbox );

    if ( slot->format == render->glyph_format )
      FT_Outline_Get_CBox( &slot->outline, cbox );
  }
