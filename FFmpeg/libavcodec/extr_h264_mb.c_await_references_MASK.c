#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  refs ;
typedef  int int16_t ;
struct TYPE_12__ {int* mb_type; } ;
struct TYPE_16__ {int mb_height; TYPE_1__ cur_pic; } ;
struct TYPE_15__ {int reference; TYPE_2__* parent; } ;
struct TYPE_14__ {int mb_xy; int* sub_mb_type; int list_count; TYPE_4__** ref_list; } ;
struct TYPE_13__ {int field_picture; int reference; int /*<<< orphan*/  tf; } ;
typedef  TYPE_3__ H264SliceContext ;
typedef  TYPE_4__ H264Ref ;
typedef  TYPE_5__ H264Context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 scalar_t__ FUNC1 (TYPE_5__ const*) ; 
 scalar_t__ FUNC2 (int const) ; 
 scalar_t__ FUNC3 (int const) ; 
 scalar_t__ FUNC4 (int const) ; 
 int FUNC5 (int const) ; 
 int /*<<< orphan*/  FUNC6 (int const,int,int) ; 
 int FUNC7 (int const) ; 
 scalar_t__ FUNC8 (int const) ; 
 scalar_t__ FUNC9 (int const) ; 
 scalar_t__ FUNC10 (int const) ; 
 int FUNC11 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_5__ const*,TYPE_3__*,int**,int const,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC15 (int**,int,int) ; 

__attribute__((used)) static void FUNC16(const H264Context *h, H264SliceContext *sl)
{
    const int mb_xy   = sl->mb_xy;
    const int mb_type = h->cur_pic.mb_type[mb_xy];
    int16_t refs[2][48];
    int nrefs[2] = { 0 };
    int ref, list;

    FUNC15(refs, -1, sizeof(refs));

    if (FUNC2(mb_type)) {
        FUNC14(h, sl, refs, 0, 16, 0,
                          FUNC6(mb_type, 0, 0), FUNC6(mb_type, 0, 1), nrefs);
    } else if (FUNC3(mb_type)) {
        FUNC14(h, sl, refs, 0, 8, 0,
                          FUNC6(mb_type, 0, 0), FUNC6(mb_type, 0, 1), nrefs);
        FUNC14(h, sl, refs, 8, 8, 8,
                          FUNC6(mb_type, 1, 0), FUNC6(mb_type, 1, 1), nrefs);
    } else if (FUNC4(mb_type)) {
        FUNC14(h, sl, refs, 0, 16, 0,
                          FUNC6(mb_type, 0, 0), FUNC6(mb_type, 0, 1), nrefs);
        FUNC14(h, sl, refs, 4, 16, 0,
                          FUNC6(mb_type, 1, 0), FUNC6(mb_type, 1, 1), nrefs);
    } else {
        int i;

        FUNC12(FUNC5(mb_type));

        for (i = 0; i < 4; i++) {
            const int sub_mb_type = sl->sub_mb_type[i];
            const int n           = 4 * i;
            int y_offset          = (i & 2) << 2;

            if (FUNC10(sub_mb_type)) {
                FUNC14(h, sl, refs, n, 8, y_offset,
                                  FUNC6(sub_mb_type, 0, 0),
                                  FUNC6(sub_mb_type, 0, 1),
                                  nrefs);
            } else if (FUNC9(sub_mb_type)) {
                FUNC14(h, sl, refs, n, 4, y_offset,
                                  FUNC6(sub_mb_type, 0, 0),
                                  FUNC6(sub_mb_type, 0, 1),
                                  nrefs);
                FUNC14(h, sl, refs, n + 2, 4, y_offset + 4,
                                  FUNC6(sub_mb_type, 0, 0),
                                  FUNC6(sub_mb_type, 0, 1),
                                  nrefs);
            } else if (FUNC8(sub_mb_type)) {
                FUNC14(h, sl, refs, n, 8, y_offset,
                                  FUNC6(sub_mb_type, 0, 0),
                                  FUNC6(sub_mb_type, 0, 1),
                                  nrefs);
                FUNC14(h, sl, refs, n + 1, 8, y_offset,
                                  FUNC6(sub_mb_type, 0, 0),
                                  FUNC6(sub_mb_type, 0, 1),
                                  nrefs);
            } else {
                int j;
                FUNC12(FUNC7(sub_mb_type));
                for (j = 0; j < 4; j++) {
                    int sub_y_offset = y_offset + 2 * (j & 2);
                    FUNC14(h, sl, refs, n + j, 4, sub_y_offset,
                                      FUNC6(sub_mb_type, 0, 0),
                                      FUNC6(sub_mb_type, 0, 1),
                                      nrefs);
                }
            }
        }
    }

    for (list = sl->list_count - 1; list >= 0; list--)
        for (ref = 0; ref < 48 && nrefs[list]; ref++) {
            int row = refs[list][ref];
            if (row >= 0) {
                H264Ref *ref_pic  = &sl->ref_list[list][ref];
                int ref_field         = ref_pic->reference - 1;
                int ref_field_picture = ref_pic->parent->field_picture;
                int pic_height        = 16 * h->mb_height >> ref_field_picture;

                row <<= FUNC11(sl);
                nrefs[list]--;

                if (!FUNC1(h) && ref_field_picture) { // frame referencing two fields
                    FUNC12((ref_pic->parent->reference & 3) == 3);
                    FUNC13(&ref_pic->parent->tf,
                                             FUNC0((row >> 1) - !(row & 1),
                                                   pic_height - 1),
                                             1);
                    FUNC13(&ref_pic->parent->tf,
                                             FUNC0((row >> 1), pic_height - 1),
                                             0);
                } else if (FUNC1(h) && !ref_field_picture) { // field referencing one field of a frame
                    FUNC13(&ref_pic->parent->tf,
                                             FUNC0(row * 2 + ref_field,
                                                   pic_height - 1),
                                             0);
                } else if (FUNC1(h)) {
                    FUNC13(&ref_pic->parent->tf,
                                             FUNC0(row, pic_height - 1),
                                             ref_field);
                } else {
                    FUNC13(&ref_pic->parent->tf,
                                             FUNC0(row, pic_height - 1),
                                             0);
                }
            }
        }
}