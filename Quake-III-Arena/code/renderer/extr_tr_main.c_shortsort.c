
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ sort; } ;
typedef TYPE_1__ drawSurf_t ;


 int SWAP_DRAW_SURF (TYPE_1__*,TYPE_1__*) ;

__attribute__((used)) static void shortsort( drawSurf_t *lo, drawSurf_t *hi ) {
    drawSurf_t *p, *max;
 int temp;

    while (hi > lo) {
        max = lo;
        for (p = lo + 1; p <= hi; p++ ) {
            if ( p->sort > max->sort ) {
                max = p;
            }
        }
        SWAP_DRAW_SURF(max, hi);
        hi--;
    }
}
