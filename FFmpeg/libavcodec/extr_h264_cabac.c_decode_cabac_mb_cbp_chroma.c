
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int left_cbp; int top_cbp; int * cabac_state; int cabac; } ;
typedef TYPE_1__ H264SliceContext ;


 int get_cabac_noinline (int *,int *) ;

__attribute__((used)) static int decode_cabac_mb_cbp_chroma(H264SliceContext *sl)
{
    int ctx;
    int cbp_a, cbp_b;

    cbp_a = (sl->left_cbp>>4)&0x03;
    cbp_b = (sl-> top_cbp>>4)&0x03;

    ctx = 0;
    if( cbp_a > 0 ) ctx++;
    if( cbp_b > 0 ) ctx += 2;
    if( get_cabac_noinline( &sl->cabac, &sl->cabac_state[77 + ctx] ) == 0 )
        return 0;

    ctx = 4;
    if( cbp_a == 2 ) ctx++;
    if( cbp_b == 2 ) ctx += 2;
    return 1 + get_cabac_noinline( &sl->cabac, &sl->cabac_state[77 + ctx] );
}
