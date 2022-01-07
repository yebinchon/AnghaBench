
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int* left_type; int top_type; int cabac; int * cabac_state; } ;
typedef TYPE_1__ H264SliceContext ;


 size_t LTOP ;
 int MB_TYPE_INTRA16x16 ;
 int MB_TYPE_INTRA_PCM ;
 int get_cabac_noinline (int *,int *) ;
 scalar_t__ get_cabac_terminate (int *) ;

__attribute__((used)) static int decode_cabac_intra_mb_type(H264SliceContext *sl,
                                      int ctx_base, int intra_slice)
{
    uint8_t *state= &sl->cabac_state[ctx_base];
    int mb_type;

    if(intra_slice){
        int ctx=0;
        if (sl->left_type[LTOP] & (MB_TYPE_INTRA16x16|MB_TYPE_INTRA_PCM))
            ctx++;
        if (sl->top_type & (MB_TYPE_INTRA16x16|MB_TYPE_INTRA_PCM))
            ctx++;
        if( get_cabac_noinline( &sl->cabac, &state[ctx] ) == 0 )
            return 0;
        state += 2;
    }else{
        if( get_cabac_noinline( &sl->cabac, state ) == 0 )
            return 0;
    }

    if( get_cabac_terminate( &sl->cabac ) )
        return 25;

    mb_type = 1;
    mb_type += 12 * get_cabac_noinline( &sl->cabac, &state[1] );
    if( get_cabac_noinline( &sl->cabac, &state[2] ) )
        mb_type += 4 + 4 * get_cabac_noinline( &sl->cabac, &state[2+intra_slice] );
    mb_type += 2 * get_cabac_noinline( &sl->cabac, &state[3+intra_slice] );
    mb_type += 1 * get_cabac_noinline( &sl->cabac, &state[3+2*intra_slice] );
    return mb_type;
}
