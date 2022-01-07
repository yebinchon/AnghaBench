
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 float AngleNormalize360 (float) ;

float AngleNormalize180 ( float angle ) {
 angle = AngleNormalize360( angle );
 if ( angle > 180.0 ) {
  angle -= 360.0;
 }
 return angle;
}
