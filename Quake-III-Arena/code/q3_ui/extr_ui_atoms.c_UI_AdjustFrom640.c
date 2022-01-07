
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {float scale; float bias; } ;


 TYPE_1__ uis ;

void UI_AdjustFrom640( float *x, float *y, float *w, float *h ) {

 *x = *x * uis.scale + uis.bias;
 *y *= uis.scale;
 *w *= uis.scale;
 *h *= uis.scale;
}
