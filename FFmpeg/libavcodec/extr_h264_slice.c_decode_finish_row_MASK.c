#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_6__ ;
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_18__ {int mb_height; scalar_t__ picture_structure; TYPE_4__* cur_pic_ptr; scalar_t__ droppable; } ;
struct TYPE_17__ {int mb_y; TYPE_3__* h264; scalar_t__ deblocking_filter; } ;
struct TYPE_16__ {int /*<<< orphan*/  tf; } ;
struct TYPE_15__ {TYPE_2__* slice_ctx; } ;
struct TYPE_13__ {scalar_t__ error_occurred; } ;
struct TYPE_14__ {TYPE_1__ er; } ;
typedef  TYPE_5__ H264SliceContext ;
typedef  TYPE_6__ H264Context ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int FUNC1 (TYPE_6__ const*) ; 
 int FUNC2 (TYPE_6__ const*) ; 
 scalar_t__ PICT_BOTTOM_FIELD ; 
 int /*<<< orphan*/  FUNC3 (TYPE_6__ const*,TYPE_5__*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int) ; 

__attribute__((used)) static void FUNC5(const H264Context *h, H264SliceContext *sl)
{
    int top            = 16 * (sl->mb_y      >> FUNC1(h));
    int pic_height     = 16 *  h->mb_height >> FUNC1(h);
    int height         =  16      << FUNC2(h);
    int deblock_border = (16 + 4) << FUNC2(h);

    if (sl->deblocking_filter) {
        if ((top + height) >= pic_height)
            height += deblock_border;
        top -= deblock_border;
    }

    if (top >= pic_height || (top + height) < 0)
        return;

    height = FUNC0(height, pic_height - top);
    if (top < 0) {
        height = top + height;
        top    = 0;
    }

    FUNC3(h, sl, top, height);

    if (h->droppable || sl->h264->slice_ctx[0].er.error_occurred)
        return;

    FUNC4(&h->cur_pic_ptr->tf, top + height - 1,
                              h->picture_structure == PICT_BOTTOM_FIELD);
}