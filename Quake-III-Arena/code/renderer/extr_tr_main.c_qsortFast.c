
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ sort; } ;
typedef TYPE_1__ drawSurf_t ;
struct TYPE_6__ {int (* Error ) (int ,char*) ;} ;


 unsigned int CUTOFF ;
 int ERR_DROP ;
 int SWAP_DRAW_SURF (char*,char*) ;
 TYPE_4__ ri ;
 int shortsort (TYPE_1__*,TYPE_1__*) ;
 int stub1 (int ,char*) ;

void qsortFast (
    void *base,
    unsigned num,
    unsigned width
    )
{
    char *lo, *hi;
    char *mid;
    char *loguy, *higuy;
    unsigned size;
    char *lostk[30], *histk[30];
    int stkptr;
 int temp;

 if ( sizeof(drawSurf_t) != 8 ) {
  ri.Error( ERR_DROP, "change SWAP_DRAW_SURF macro" );
 }




    if (num < 2 || width == 0)
        return;

    stkptr = 0;

    lo = base;
    hi = (char *)base + width * (num-1);




recurse:

    size = (hi - lo) / width + 1;


    if (size <= CUTOFF) {
         shortsort((drawSurf_t *)lo, (drawSurf_t *)hi);
    }
    else {
        mid = lo + (size / 2) * width;
        SWAP_DRAW_SURF(mid, lo);







        loguy = lo;
        higuy = hi + width;



        for (;;) {




            do {
                loguy += width;
            } while (loguy <= hi &&
    ( ((drawSurf_t *)loguy)->sort <= ((drawSurf_t *)lo)->sort ) );




            do {
                higuy -= width;
            } while (higuy > lo &&
    ( ((drawSurf_t *)higuy)->sort >= ((drawSurf_t *)lo)->sort ) );




            if (higuy < loguy)
                break;





            SWAP_DRAW_SURF(loguy, higuy);



        }
        SWAP_DRAW_SURF(lo, higuy);
        if ( higuy - 1 - lo >= hi - loguy ) {
            if (lo + width < higuy) {
                lostk[stkptr] = lo;
                histk[stkptr] = higuy - width;
                ++stkptr;
            }

            if (loguy < hi) {
                lo = loguy;
                goto recurse;
            }
        }
        else {
            if (loguy < hi) {
                lostk[stkptr] = loguy;
                histk[stkptr] = hi;
                ++stkptr;
            }

            if (lo + width < higuy) {
                hi = higuy - width;
                goto recurse;
            }
        }
    }




    --stkptr;
    if (stkptr >= 0) {
        lo = lostk[stkptr];
        hi = histk[stkptr];
        goto recurse;
    }
    else
        return;
}
