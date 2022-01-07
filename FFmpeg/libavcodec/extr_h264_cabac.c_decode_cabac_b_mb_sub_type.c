
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * cabac_state; int cabac; } ;
typedef TYPE_1__ H264SliceContext ;


 int get_cabac (int *,int *) ;

__attribute__((used)) static int decode_cabac_b_mb_sub_type(H264SliceContext *sl)
{
    int type;
    if( !get_cabac( &sl->cabac, &sl->cabac_state[36] ) )
        return 0;
    if( !get_cabac( &sl->cabac, &sl->cabac_state[37] ) )
        return 1 + get_cabac( &sl->cabac, &sl->cabac_state[39] );
    type = 3;
    if( get_cabac( &sl->cabac, &sl->cabac_state[38] ) ) {
        if( get_cabac( &sl->cabac, &sl->cabac_state[39] ) )
            return 11 + get_cabac( &sl->cabac, &sl->cabac_state[39] );
        type += 4;
    }
    type += 2*get_cabac( &sl->cabac, &sl->cabac_state[39] );
    type += get_cabac( &sl->cabac, &sl->cabac_state[39] );
    return type;
}
