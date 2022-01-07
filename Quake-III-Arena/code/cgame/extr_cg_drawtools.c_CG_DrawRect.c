
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CG_DrawSides (float,float,float,float,float) ;
 int CG_DrawTopBottom (float,float,float,float,float) ;
 int trap_R_SetColor (float const*) ;

void CG_DrawRect( float x, float y, float width, float height, float size, const float *color ) {
 trap_R_SetColor( color );

  CG_DrawTopBottom(x, y, width, height, size);
  CG_DrawSides(x, y, width, height, size);

 trap_R_SetColor( ((void*)0) );
}
