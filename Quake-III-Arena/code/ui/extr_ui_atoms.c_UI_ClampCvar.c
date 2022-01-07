
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
float UI_ClampCvar( float min, float max, float value )
{
 if ( value < min ) return min;
 if ( value > max ) return max;
 return value;
}
