
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {float xscale; float yscale; } ;


 TYPE_1__* DC ;

void AdjustFrom640(float *x, float *y, float *w, float *h) {

 *x *= DC->xscale;
 *y *= DC->yscale;
 *w *= DC->xscale;
 *h *= DC->yscale;
}
