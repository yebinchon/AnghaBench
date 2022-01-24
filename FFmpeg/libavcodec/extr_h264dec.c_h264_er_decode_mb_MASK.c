#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/ ** ref_index; } ;
struct TYPE_10__ {int mb_stride; TYPE_3__* slice_ctx; TYPE_2__ cur_pic; int /*<<< orphan*/  avctx; } ;
struct TYPE_9__ {int mb_x; int mb_y; int mb_xy; int* ref_count; scalar_t__ mb_field_decoding_flag; scalar_t__ mb_mbaff; int /*<<< orphan*/ *** mv_cache; int /*<<< orphan*/ ** ref_cache; TYPE_1__** ref_list; int /*<<< orphan*/  non_zero_count_cache; } ;
struct TYPE_7__ {int reference; int /*<<< orphan*/ * data; } ;
typedef  TYPE_3__ H264SliceContext ;
typedef  TYPE_4__ H264Context ;

/* Variables and functions */
 int /*<<< orphan*/  AV_LOG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (int,int) ; 
 size_t* scan8 ; 

__attribute__((used)) static void FUNC6(void *opaque, int ref, int mv_dir, int mv_type,
                              int (*mv)[2][4][2],
                              int mb_x, int mb_y, int mb_intra, int mb_skipped)
{
    H264Context *h = opaque;
    H264SliceContext *sl = &h->slice_ctx[0];

    sl->mb_x = mb_x;
    sl->mb_y = mb_y;
    sl->mb_xy = mb_x + mb_y * h->mb_stride;
    FUNC4(sl->non_zero_count_cache, 0, sizeof(sl->non_zero_count_cache));
    FUNC0(ref >= 0);
    /* FIXME: It is possible albeit uncommon that slice references
     * differ between slices. We take the easy approach and ignore
     * it for now. If this turns out to have any relevance in
     * practice then correct remapping should be added. */
    if (ref >= sl->ref_count[0])
        ref = 0;
    if (!sl->ref_list[0][ref].data[0]) {
        FUNC1(h->avctx, AV_LOG_DEBUG, "Reference not available for error concealing\n");
        ref = 0;
    }
    if ((sl->ref_list[0][ref].reference&3) != 3) {
        FUNC1(h->avctx, AV_LOG_DEBUG, "Reference invalid\n");
        return;
    }
    FUNC3(&h->cur_pic.ref_index[0][4 * sl->mb_xy],
                   2, 2, 2, ref, 1);
    FUNC3(&sl->ref_cache[0][scan8[0]], 4, 4, 8, ref, 1);
    FUNC3(sl->mv_cache[0][scan8[0]], 4, 4, 8,
                   FUNC5((*mv)[0][0][0], (*mv)[0][0][1]), 4);
    sl->mb_mbaff =
    sl->mb_field_decoding_flag = 0;
    FUNC2(h, &h->slice_ctx[0]);
}