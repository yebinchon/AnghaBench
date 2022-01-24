#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int columns; int rows; int /*<<< orphan*/ * color_map; int /*<<< orphan*/  pgno; TYPE_2__* text; } ;
typedef  TYPE_1__ vbi_page ;
struct TYPE_15__ {scalar_t__ opacity; } ;
typedef  TYPE_2__ vbi_char ;
typedef  int uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_16__ {int opacity; scalar_t__ y_offset; int /*<<< orphan*/  x_offset; } ;
typedef  TYPE_3__ TeletextContext ;
struct TYPE_17__ {int* linesize; int w; int h; int nb_colors; int /*<<< orphan*/  type; void** data; scalar_t__ y; int /*<<< orphan*/  x; } ;
typedef  TYPE_4__ AVSubtitleRect ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVPALETTE_SIZE ; 
 int /*<<< orphan*/  AV_LOG_DEBUG ; 
 int BITMAP_CHAR_HEIGHT ; 
 int BITMAP_CHAR_WIDTH ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (int,int,int,int) ; 
 int /*<<< orphan*/  SUBTITLE_BITMAP ; 
 int /*<<< orphan*/  SUBTITLE_NONE ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int VBI_NB_COLORS ; 
 int /*<<< orphan*/  VBI_PIXFMT_PAL8 ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 size_t VBI_TRANSPARENT_BLACK ; 
 scalar_t__ VBI_TRANSPARENT_SPACE ; 
 int /*<<< orphan*/  FUNC6 (void**) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 void* FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*,TYPE_4__*,TYPE_1__*,int,int,int) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,int /*<<< orphan*/ ,void*,int,int /*<<< orphan*/ ,int,int,int,int,int) ; 

__attribute__((used)) static int FUNC12(TeletextContext *ctx, AVSubtitleRect *sub_rect, vbi_page *page, int chop_top)
{
    int resx = page->columns * BITMAP_CHAR_WIDTH;
    int resy = (page->rows - chop_top) * BITMAP_CHAR_HEIGHT;
    uint8_t ci;
    vbi_char *vc = page->text + (chop_top * page->columns);
    vbi_char *vcend = page->text + (page->rows * page->columns);

    for (; vc < vcend; vc++) {
        if (vc->opacity != VBI_TRANSPARENT_SPACE)
            break;
    }

    if (vc >= vcend) {
        FUNC7(ctx, AV_LOG_DEBUG, "dropping empty page %3x\n", page->pgno);
        sub_rect->type = SUBTITLE_NONE;
        return 0;
    }

    sub_rect->data[0] = FUNC8(resx * resy);
    sub_rect->linesize[0] = resx;
    if (!sub_rect->data[0])
        return FUNC0(ENOMEM);

    FUNC11(page, VBI_PIXFMT_PAL8,
                            sub_rect->data[0], sub_rect->linesize[0],
                            0, chop_top, page->columns, page->rows - chop_top,
                            /*reveal*/ 1, /*flash*/ 1);

    FUNC10(ctx, sub_rect, page, chop_top, resx, resy);
    sub_rect->x = ctx->x_offset;
    sub_rect->y = ctx->y_offset + chop_top * BITMAP_CHAR_HEIGHT;
    sub_rect->w = resx;
    sub_rect->h = resy;
    sub_rect->nb_colors = ctx->opacity > 0 && ctx->opacity < 255 ? 2 * VBI_NB_COLORS : VBI_NB_COLORS;
    sub_rect->data[1] = FUNC8(AVPALETTE_SIZE);
    if (!sub_rect->data[1]) {
        FUNC6(&sub_rect->data[0]);
        return FUNC0(ENOMEM);
    }
    for (ci = 0; ci < VBI_NB_COLORS; ci++) {
        int r, g, b, a;

        r = FUNC5(page->color_map[ci]);
        g = FUNC4(page->color_map[ci]);
        b = FUNC3(page->color_map[ci]);
        a = FUNC2(page->color_map[ci]);
        ((uint32_t *)sub_rect->data[1])[ci] = FUNC1(r, g, b, a);
        ((uint32_t *)sub_rect->data[1])[ci + VBI_NB_COLORS] = FUNC1(r, g, b, ctx->opacity);
        FUNC9(ctx, "palette %0x\n", ((uint32_t *)sub_rect->data[1])[ci]);
    }
    ((uint32_t *)sub_rect->data[1])[VBI_TRANSPARENT_BLACK] = FUNC1(0, 0, 0, 0);
    ((uint32_t *)sub_rect->data[1])[VBI_TRANSPARENT_BLACK + VBI_NB_COLORS] = FUNC1(0, 0, 0, 0);
    sub_rect->type = SUBTITLE_BITMAP;
    return 0;
}