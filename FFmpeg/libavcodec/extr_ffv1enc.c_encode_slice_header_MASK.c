#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  state ;
struct TYPE_13__ {TYPE_3__* f; } ;
struct TYPE_14__ {int slice_x; int num_h_slices; int width; int slice_y; int num_v_slices; int height; int slice_width; int slice_height; int plane_count; int context_model; int version; int slice_coding_mode; int slice_rct_by_coef; int slice_rct_ry_coef; TYPE_4__ picture; TYPE_1__* plane; int /*<<< orphan*/  c; } ;
struct TYPE_11__ {int num; int den; } ;
struct TYPE_12__ {TYPE_2__ sample_aspect_ratio; int /*<<< orphan*/  top_field_first; int /*<<< orphan*/  interlaced_frame; } ;
struct TYPE_10__ {int quant_table_index; } ;
typedef  int /*<<< orphan*/  RangeCoder ;
typedef  TYPE_5__ FFV1Context ;

/* Variables and functions */
 int CONTEXT_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(FFV1Context *f, FFV1Context *fs)
{
    RangeCoder *c = &fs->c;
    uint8_t state[CONTEXT_SIZE];
    int j;
    FUNC2(state, 128, sizeof(state));

    FUNC4(c, state, (fs->slice_x     +1)*f->num_h_slices / f->width   , 0);
    FUNC4(c, state, (fs->slice_y     +1)*f->num_v_slices / f->height  , 0);
    FUNC4(c, state, (fs->slice_width +1)*f->num_h_slices / f->width -1, 0);
    FUNC4(c, state, (fs->slice_height+1)*f->num_v_slices / f->height-1, 0);
    for (j=0; j<f->plane_count; j++) {
        FUNC4(c, state, f->plane[j].quant_table_index, 0);
        FUNC0(f->plane[j].quant_table_index == f->context_model);
    }
    if (!f->picture.f->interlaced_frame)
        FUNC4(c, state, 3, 0);
    else
        FUNC4(c, state, 1 + !f->picture.f->top_field_first, 0);
    FUNC4(c, state, f->picture.f->sample_aspect_ratio.num, 0);
    FUNC4(c, state, f->picture.f->sample_aspect_ratio.den, 0);
    if (f->version > 3) {
        FUNC3(c, state, fs->slice_coding_mode == 1);
        if (fs->slice_coding_mode == 1)
            FUNC1(f, fs);
        FUNC4(c, state, fs->slice_coding_mode, 0);
        if (fs->slice_coding_mode != 1) {
            FUNC4(c, state, fs->slice_rct_by_coef, 0);
            FUNC4(c, state, fs->slice_rct_ry_coef, 0);
        }
    }
}