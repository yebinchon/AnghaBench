
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int* mb_type; } ;
struct TYPE_8__ {int mb_stride; scalar_t__* slice_table; TYPE_1__ cur_pic; } ;
struct TYPE_7__ {int mb_xy; int mb_field_decoding_flag; scalar_t__ slice_num; int * cabac_state; int cabac; int mb_x; } ;
typedef TYPE_2__ H264SliceContext ;
typedef TYPE_3__ H264Context ;


 int get_cabac_noinline (int *,int *) ;

__attribute__((used)) static int decode_cabac_field_decoding_flag(const H264Context *h, H264SliceContext *sl)
{
    const int mbb_xy = sl->mb_xy - 2*h->mb_stride;

    unsigned long ctx = 0;

    ctx += sl->mb_field_decoding_flag & !!sl->mb_x;
    ctx += (h->cur_pic.mb_type[mbb_xy] >> 7) & (h->slice_table[mbb_xy] == sl->slice_num);

    return get_cabac_noinline( &sl->cabac, &(sl->cabac_state+70)[ctx] );
}
