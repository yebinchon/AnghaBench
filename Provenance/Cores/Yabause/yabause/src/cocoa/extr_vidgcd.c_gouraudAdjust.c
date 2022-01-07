
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int gouraudAdjust( int color, int tableValue )
{
 color += (tableValue - 0x10);

 if ( color < 0 ) color = 0;
 if ( color > 0x1f ) color = 0x1f;

 return color;
}
