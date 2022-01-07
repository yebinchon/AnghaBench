
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int UI_SMALLFONT ;

float UI_ProportionalSizeScale( int style ) {
 if( style & UI_SMALLFONT ) {
  return 0.75;
 }

 return 1.00;
}
