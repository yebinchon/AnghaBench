
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
float AngleSubtract( float a1, float a2 ) {
 float a;

 a = a1 - a2;
 while ( a > 180 ) {
  a -= 360;
 }
 while ( a < -180 ) {
  a += 360;
 }
 return a;
}
