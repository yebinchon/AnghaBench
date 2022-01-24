#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  cabac; TYPE_1__* h264; int /*<<< orphan*/ * cabac_state; } ;
struct TYPE_4__ {int /*<<< orphan*/  avctx; } ;
typedef  TYPE_2__ H264SliceContext ;

/* Variables and functions */
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int INT_BIT ; 
 int INT_MIN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC4(H264SliceContext *sl, int ctxbase, int amvd, int *mvda)
{
    int mvd;

    if(!FUNC1(&sl->cabac, &sl->cabac_state[ctxbase+((amvd-3)>>(INT_BIT-1))+((amvd-33)>>(INT_BIT-1))+2])){
//    if(!get_cabac(&sl->cabac, &sl->cabac_state[ctxbase+(amvd>2)+(amvd>32)])){
        *mvda= 0;
        return 0;
    }

    mvd= 1;
    ctxbase+= 3;
    while( mvd < 9 && FUNC1( &sl->cabac, &sl->cabac_state[ctxbase] ) ) {
        if( mvd < 4 )
            ctxbase++;
        mvd++;
    }

    if( mvd >= 9 ) {
        int k = 3;
        while( FUNC2( &sl->cabac ) ) {
            mvd += 1 << k;
            k++;
            if(k>24){
                FUNC0(sl->h264->avctx, AV_LOG_ERROR, "overflow in decode_cabac_mb_mvd\n");
                return INT_MIN;
            }
        }
        while( k-- ) {
            mvd += FUNC2( &sl->cabac )<<k;
        }
        *mvda=mvd < 70 ? mvd : 70;
    }else
        *mvda=mvd;
    return FUNC3( &sl->cabac, -mvd );
}