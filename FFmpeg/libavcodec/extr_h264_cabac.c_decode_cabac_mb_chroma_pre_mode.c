
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__* chroma_pred_mode_table; } ;
struct TYPE_5__ {int* left_mb_xy; int top_mb_xy; int * cabac_state; int cabac; scalar_t__ top_type; scalar_t__* left_type; } ;
typedef TYPE_1__ H264SliceContext ;
typedef TYPE_2__ H264Context ;


 size_t LTOP ;
 scalar_t__ get_cabac_noinline (int *,int *) ;

__attribute__((used)) static int decode_cabac_mb_chroma_pre_mode(const H264Context *h, H264SliceContext *sl)
{
    const int mba_xy = sl->left_mb_xy[0];
    const int mbb_xy = sl->top_mb_xy;

    int ctx = 0;


    if (sl->left_type[LTOP] && h->chroma_pred_mode_table[mba_xy] != 0)
        ctx++;

    if (sl->top_type && h->chroma_pred_mode_table[mbb_xy] != 0)
        ctx++;

    if( get_cabac_noinline( &sl->cabac, &sl->cabac_state[64+ctx] ) == 0 )
        return 0;

    if( get_cabac_noinline( &sl->cabac, &sl->cabac_state[64+3] ) == 0 )
        return 1;
    if( get_cabac_noinline( &sl->cabac, &sl->cabac_state[64+3] ) == 0 )
        return 2;
    else
        return 3;
}
