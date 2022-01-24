#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  state ;
struct TYPE_9__ {int* one_state; } ;
struct TYPE_10__ {int version; int ac; int* state_transition; int colorspace; int bits_per_raw_sample; int chroma_h_shift; int chroma_v_shift; int slice_count; int slice_x; int num_h_slices; int width; int slice_y; int num_v_slices; int height; int slice_width; int slice_height; int plane_count; int context_model; TYPE_1__* plane; struct TYPE_10__** slice_context; int /*<<< orphan*/  quant_table; int /*<<< orphan*/  transparency; int /*<<< orphan*/  chroma_planes; TYPE_2__ c; } ;
struct TYPE_8__ {int quant_table_index; } ;
typedef  TYPE_2__ RangeCoder ;
typedef  TYPE_3__ FFV1Context ;

/* Variables and functions */
 int AC_RANGE_CUSTOM_TAB ; 
 int CONTEXT_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__* const,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__* const,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__* const,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(FFV1Context *f)
{
    uint8_t state[CONTEXT_SIZE];
    int i, j;
    RangeCoder *const c = &f->slice_context[0]->c;

    FUNC1(state, 128, sizeof(state));

    if (f->version < 2) {
        FUNC3(c, state, f->version, 0);
        FUNC3(c, state, f->ac, 0);
        if (f->ac == AC_RANGE_CUSTOM_TAB) {
            for (i = 1; i < 256; i++)
                FUNC3(c, state,
                           f->state_transition[i] - c->one_state[i], 1);
        }
        FUNC3(c, state, f->colorspace, 0); //YUV cs type
        if (f->version > 0)
            FUNC3(c, state, f->bits_per_raw_sample, 0);
        FUNC2(c, state, f->chroma_planes);
        FUNC3(c, state, f->chroma_h_shift, 0);
        FUNC3(c, state, f->chroma_v_shift, 0);
        FUNC2(c, state, f->transparency);

        FUNC4(c, f->quant_table);
    } else if (f->version < 3) {
        FUNC3(c, state, f->slice_count, 0);
        for (i = 0; i < f->slice_count; i++) {
            FFV1Context *fs = f->slice_context[i];
            FUNC3(c, state,
                       (fs->slice_x      + 1) * f->num_h_slices / f->width, 0);
            FUNC3(c, state,
                       (fs->slice_y      + 1) * f->num_v_slices / f->height, 0);
            FUNC3(c, state,
                       (fs->slice_width  + 1) * f->num_h_slices / f->width - 1,
                       0);
            FUNC3(c, state,
                       (fs->slice_height + 1) * f->num_v_slices / f->height - 1,
                       0);
            for (j = 0; j < f->plane_count; j++) {
                FUNC3(c, state, f->plane[j].quant_table_index, 0);
                FUNC0(f->plane[j].quant_table_index == f->context_model);
            }
        }
    }
}