
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int vidWidth; int vidHeight; } ;
struct TYPE_4__ {TYPE_1__ glconfig; } ;


 TYPE_2__ cls ;

void SCR_AdjustFrom640( float *x, float *y, float *w, float *h ) {
 float xscale;
 float yscale;
 xscale = cls.glconfig.vidWidth / 640.0;
 yscale = cls.glconfig.vidHeight / 480.0;
 if ( x ) {
  *x *= xscale;
 }
 if ( y ) {
  *y *= yscale;
 }
 if ( w ) {
  *w *= xscale;
 }
 if ( h ) {
  *h *= yscale;
 }
}
