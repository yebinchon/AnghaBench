
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int floor (float) ;

__attribute__((used)) static void HSVtoRGB( float h, float s, float v, float rgb[3] )
{
 int i;
 float f;
 float p, q, t;

 h *= 5;

 i = floor( h );
 f = h - i;

 p = v * ( 1 - s );
 q = v * ( 1 - s * f );
 t = v * ( 1 - s * ( 1 - f ) );

 switch ( i )
 {
 case 0:
  rgb[0] = v;
  rgb[1] = t;
  rgb[2] = p;
  break;
 case 1:
  rgb[0] = q;
  rgb[1] = v;
  rgb[2] = p;
  break;
 case 2:
  rgb[0] = p;
  rgb[1] = v;
  rgb[2] = t;
  break;
 case 3:
  rgb[0] = p;
  rgb[1] = q;
  rgb[2] = v;
  break;
 case 4:
  rgb[0] = t;
  rgb[1] = p;
  rgb[2] = v;
  break;
 case 5:
  rgb[0] = v;
  rgb[1] = p;
  rgb[2] = q;
  break;
 }
}
