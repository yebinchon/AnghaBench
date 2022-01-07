
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int vidWidth; int vidHeight; } ;
struct TYPE_4__ {float screenXScale; float screenYScale; TYPE_1__ glconfig; } ;


 TYPE_2__ cgs ;

void CG_AdjustFrom640( float *x, float *y, float *w, float *h ) {







 *x *= cgs.screenXScale;
 *y *= cgs.screenYScale;
 *w *= cgs.screenXScale;
 *h *= cgs.screenYScale;
}
