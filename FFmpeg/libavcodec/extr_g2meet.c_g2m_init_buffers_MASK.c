#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ old_width; scalar_t__ width; int old_height; int height; int framebuf_stride; int compression; int old_tile_w; int tile_width; int old_tile_h; int tile_height; int tile_stride; int epic_buf_stride; void* epic_buf_base; int /*<<< orphan*/ * epic_buf; void* kempf_flags; void* kempf_buf; void* jpeg_tile; void* synth_tile; int /*<<< orphan*/  framebuf; } ;
typedef  TYPE_1__ G2MContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AV_INPUT_BUFFER_PADDING_SIZE ; 
 int /*<<< orphan*/  ENOMEM ; 
 int FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (void**) ; 
 void* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 

__attribute__((used)) static int FUNC6(G2MContext *c)
{
    int aligned_height;

    if (!c->framebuf || c->old_width < c->width || c->old_height < c->height) {
        c->framebuf_stride = FUNC1(c->width + 15, 16) * 3;
        aligned_height     = c->height + 15;
        FUNC2(c->framebuf);
        c->framebuf = FUNC5(c->framebuf_stride, aligned_height);
        if (!c->framebuf)
            return FUNC0(ENOMEM);
    }
    if (!c->synth_tile || !c->jpeg_tile ||
        (c->compression == 2 && !c->epic_buf_base) ||
        c->old_tile_w < c->tile_width ||
        c->old_tile_h < c->tile_height) {
        c->tile_stride     = FUNC1(c->tile_width, 16) * 3;
        c->epic_buf_stride = FUNC1(c->tile_width * 4, 16);
        aligned_height     = FUNC1(c->tile_height,    16);
        FUNC3(&c->synth_tile);
        FUNC3(&c->jpeg_tile);
        FUNC3(&c->kempf_buf);
        FUNC3(&c->kempf_flags);
        FUNC3(&c->epic_buf_base);
        c->epic_buf    = NULL;
        c->synth_tile  = FUNC4(c->tile_stride      * aligned_height);
        c->jpeg_tile   = FUNC4(c->tile_stride      * aligned_height);
        c->kempf_buf   = FUNC4((c->tile_width + 1) * aligned_height +
                                    AV_INPUT_BUFFER_PADDING_SIZE);
        c->kempf_flags = FUNC4(c->tile_width       * aligned_height);
        if (!c->synth_tile || !c->jpeg_tile ||
            !c->kempf_buf || !c->kempf_flags)
            return FUNC0(ENOMEM);
        if (c->compression == 2) {
            c->epic_buf_base = FUNC4(c->epic_buf_stride * aligned_height + 4);
            if (!c->epic_buf_base)
                return FUNC0(ENOMEM);
            c->epic_buf = c->epic_buf_base + 4;
        }
    }

    return 0;
}