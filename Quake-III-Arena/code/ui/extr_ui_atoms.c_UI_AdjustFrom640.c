
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {float scale; float bias; float xscale; float yscale; } ;
struct TYPE_4__ {TYPE_1__ uiDC; } ;


 TYPE_2__ uiInfo ;

void UI_AdjustFrom640( float *x, float *y, float *w, float *h ) {
 *x *= uiInfo.uiDC.xscale;
 *y *= uiInfo.uiDC.yscale;
 *w *= uiInfo.uiDC.xscale;
 *h *= uiInfo.uiDC.yscale;

}
