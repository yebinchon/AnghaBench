
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int trap_R_SetColor (float const*) ;

void UI_SetColor( const float *rgba ) {
 trap_R_SetColor( rgba );
}
