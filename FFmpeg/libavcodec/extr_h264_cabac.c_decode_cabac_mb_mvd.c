
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int cabac; TYPE_1__* h264; int * cabac_state; } ;
struct TYPE_4__ {int avctx; } ;
typedef TYPE_2__ H264SliceContext ;


 int AV_LOG_ERROR ;
 int INT_BIT ;
 int INT_MIN ;
 int av_log (int ,int ,char*) ;
 scalar_t__ get_cabac (int *,int *) ;
 int get_cabac_bypass (int *) ;
 int get_cabac_bypass_sign (int *,int) ;

__attribute__((used)) static int decode_cabac_mb_mvd(H264SliceContext *sl, int ctxbase, int amvd, int *mvda)
{
    int mvd;

    if(!get_cabac(&sl->cabac, &sl->cabac_state[ctxbase+((amvd-3)>>(INT_BIT-1))+((amvd-33)>>(INT_BIT-1))+2])){

        *mvda= 0;
        return 0;
    }

    mvd= 1;
    ctxbase+= 3;
    while( mvd < 9 && get_cabac( &sl->cabac, &sl->cabac_state[ctxbase] ) ) {
        if( mvd < 4 )
            ctxbase++;
        mvd++;
    }

    if( mvd >= 9 ) {
        int k = 3;
        while( get_cabac_bypass( &sl->cabac ) ) {
            mvd += 1 << k;
            k++;
            if(k>24){
                av_log(sl->h264->avctx, AV_LOG_ERROR, "overflow in decode_cabac_mb_mvd\n");
                return INT_MIN;
            }
        }
        while( k-- ) {
            mvd += get_cabac_bypass( &sl->cabac )<<k;
        }
        *mvda=mvd < 70 ? mvd : 70;
    }else
        *mvda=mvd;
    return get_cabac_bypass_sign( &sl->cabac, -mvd );
}
