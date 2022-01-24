#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/ * mb_type; } ;
struct TYPE_11__ {int mb_stride; scalar_t__* slice_table; TYPE_1__ cur_pic; } ;
struct TYPE_10__ {scalar_t__ slice_num; int mb_xy; scalar_t__ slice_type_nos; int /*<<< orphan*/ * cabac_state; int /*<<< orphan*/  cabac; } ;
typedef  TYPE_2__ H264SliceContext ;
typedef  TYPE_3__ H264Context ;

/* Variables and functions */
 scalar_t__ AV_PICTURE_TYPE_B ; 
 int FUNC0 (TYPE_3__ const*) ; 
 scalar_t__ FUNC1 (TYPE_3__ const*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_2__*) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(const H264Context *h, H264SliceContext *sl,
                                int mb_x, int mb_y)
{
    int mba_xy, mbb_xy;
    int ctx = 0;

    if (FUNC1(h)) { //FIXME merge with the stuff in fill_caches?
        int mb_xy = mb_x + (mb_y&~1)*h->mb_stride;
        mba_xy = mb_xy - 1;
        if( (mb_y&1)
            && h->slice_table[mba_xy] == sl->slice_num
            && FUNC4(sl) == !!FUNC2( h->cur_pic.mb_type[mba_xy] ) )
            mba_xy += h->mb_stride;
        if (FUNC4(sl)) {
            mbb_xy = mb_xy - h->mb_stride;
            if( !(mb_y&1)
                && h->slice_table[mbb_xy] == sl->slice_num
                && FUNC2( h->cur_pic.mb_type[mbb_xy] ) )
                mbb_xy -= h->mb_stride;
        }else
            mbb_xy = mb_x + (mb_y-1)*h->mb_stride;
    }else{
        int mb_xy = sl->mb_xy;
        mba_xy = mb_xy - 1;
        mbb_xy = mb_xy - (h->mb_stride << FUNC0(h));
    }

    if( h->slice_table[mba_xy] == sl->slice_num && !FUNC3(h->cur_pic.mb_type[mba_xy] ))
        ctx++;
    if( h->slice_table[mbb_xy] == sl->slice_num && !FUNC3(h->cur_pic.mb_type[mbb_xy] ))
        ctx++;

    if (sl->slice_type_nos == AV_PICTURE_TYPE_B)
        ctx += 13;
    return FUNC5( &sl->cabac, &sl->cabac_state[11+ctx] );
}