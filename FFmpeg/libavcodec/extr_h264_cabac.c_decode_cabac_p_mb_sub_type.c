
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * cabac_state; int cabac; } ;
typedef TYPE_1__ H264SliceContext ;


 scalar_t__ get_cabac (int *,int *) ;

__attribute__((used)) static int decode_cabac_p_mb_sub_type(H264SliceContext *sl)
{
    if( get_cabac( &sl->cabac, &sl->cabac_state[21] ) )
        return 0;
    if( !get_cabac( &sl->cabac, &sl->cabac_state[22] ) )
        return 1;
    if( get_cabac( &sl->cabac, &sl->cabac_state[23] ) )
        return 2;
    return 3;
}
