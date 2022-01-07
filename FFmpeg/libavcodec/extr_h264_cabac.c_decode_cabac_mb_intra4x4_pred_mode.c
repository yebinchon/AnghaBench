
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * cabac_state; int cabac; } ;
typedef TYPE_1__ H264SliceContext ;


 int get_cabac (int *,int *) ;

__attribute__((used)) static int decode_cabac_mb_intra4x4_pred_mode(H264SliceContext *sl, int pred_mode)
{
    int mode = 0;

    if( get_cabac( &sl->cabac, &sl->cabac_state[68] ) )
        return pred_mode;

    mode += 1 * get_cabac( &sl->cabac, &sl->cabac_state[69] );
    mode += 2 * get_cabac( &sl->cabac, &sl->cabac_state[69] );
    mode += 4 * get_cabac( &sl->cabac, &sl->cabac_state[69] );

    return mode + ( mode >= pred_mode );
}
