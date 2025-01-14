
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int * mb_type; } ;
struct TYPE_11__ {int mb_stride; scalar_t__* slice_table; TYPE_1__ cur_pic; } ;
struct TYPE_10__ {scalar_t__ slice_num; int mb_xy; scalar_t__ slice_type_nos; int * cabac_state; int cabac; } ;
typedef TYPE_2__ H264SliceContext ;
typedef TYPE_3__ H264Context ;


 scalar_t__ AV_PICTURE_TYPE_B ;
 int FIELD_PICTURE (TYPE_3__ const*) ;
 scalar_t__ FRAME_MBAFF (TYPE_3__ const*) ;
 scalar_t__ IS_INTERLACED (int ) ;
 int IS_SKIP (int ) ;
 int MB_FIELD (TYPE_2__*) ;
 int get_cabac_noinline (int *,int *) ;

__attribute__((used)) static int decode_cabac_mb_skip(const H264Context *h, H264SliceContext *sl,
                                int mb_x, int mb_y)
{
    int mba_xy, mbb_xy;
    int ctx = 0;

    if (FRAME_MBAFF(h)) {
        int mb_xy = mb_x + (mb_y&~1)*h->mb_stride;
        mba_xy = mb_xy - 1;
        if( (mb_y&1)
            && h->slice_table[mba_xy] == sl->slice_num
            && MB_FIELD(sl) == !!IS_INTERLACED( h->cur_pic.mb_type[mba_xy] ) )
            mba_xy += h->mb_stride;
        if (MB_FIELD(sl)) {
            mbb_xy = mb_xy - h->mb_stride;
            if( !(mb_y&1)
                && h->slice_table[mbb_xy] == sl->slice_num
                && IS_INTERLACED( h->cur_pic.mb_type[mbb_xy] ) )
                mbb_xy -= h->mb_stride;
        }else
            mbb_xy = mb_x + (mb_y-1)*h->mb_stride;
    }else{
        int mb_xy = sl->mb_xy;
        mba_xy = mb_xy - 1;
        mbb_xy = mb_xy - (h->mb_stride << FIELD_PICTURE(h));
    }

    if( h->slice_table[mba_xy] == sl->slice_num && !IS_SKIP(h->cur_pic.mb_type[mba_xy] ))
        ctx++;
    if( h->slice_table[mbb_xy] == sl->slice_num && !IS_SKIP(h->cur_pic.mb_type[mbb_xy] ))
        ctx++;

    if (sl->slice_type_nos == AV_PICTURE_TYPE_B)
        ctx += 13;
    return get_cabac_noinline( &sl->cabac, &sl->cabac_state[11+ctx] );
}
