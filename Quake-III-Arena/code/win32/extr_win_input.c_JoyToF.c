
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
float JoyToF( int value ) {
 float fValue;


 value -= 32768;


 fValue = (float)value / 32768.0;

 if ( fValue < -1 ) {
  fValue = -1;
 }
 if ( fValue > 1 ) {
  fValue = 1;
 }
 return fValue;
}
