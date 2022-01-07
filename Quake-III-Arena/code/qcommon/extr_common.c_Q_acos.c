
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 float M_PI ;
 float acos (float) ;

float Q_acos(float c) {
 float angle;

 angle = acos(c);

 if (angle > M_PI) {
  return (float)M_PI;
 }
 if (angle < -M_PI) {
  return (float)M_PI;
 }
 return angle;
}
