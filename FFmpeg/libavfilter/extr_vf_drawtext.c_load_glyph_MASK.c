#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_7__ ;
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct AVTreeNode {int advance; struct AVTreeNode* glyph; int /*<<< orphan*/  bbox; int /*<<< orphan*/  bitmap_top; int /*<<< orphan*/  bitmap_left; int /*<<< orphan*/  bitmap; int /*<<< orphan*/  border_bitmap; struct AVTreeNode* border_glyph; int /*<<< orphan*/  fontsize; int /*<<< orphan*/  code; } ;
struct TYPE_8__ {int x; } ;
struct TYPE_13__ {TYPE_1__ advance; } ;
struct TYPE_12__ {TYPE_7__* glyph; } ;
struct TYPE_11__ {TYPE_3__* priv; } ;
struct TYPE_10__ {int /*<<< orphan*/  glyphs; TYPE_6__* face; int /*<<< orphan*/  stroker; scalar_t__ borderw; int /*<<< orphan*/  fontsize; int /*<<< orphan*/  ft_load_flags; } ;
struct TYPE_9__ {int /*<<< orphan*/  top; int /*<<< orphan*/  left; int /*<<< orphan*/  bitmap; } ;
typedef  struct AVTreeNode Glyph ;
typedef  TYPE_2__* FT_BitmapGlyph ;
typedef  TYPE_3__ DrawTextContext ;
typedef  TYPE_4__ AVFilterContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_EXTERNAL ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 scalar_t__ FUNC1 (TYPE_7__*,struct AVTreeNode**) ; 
 int /*<<< orphan*/  FUNC2 (struct AVTreeNode*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct AVTreeNode**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct AVTreeNode**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (TYPE_6__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FT_RENDER_MODE_NORMAL ; 
 int /*<<< orphan*/  FUNC6 (struct AVTreeNode**) ; 
 struct AVTreeNode* FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,struct AVTreeNode*,int /*<<< orphan*/ ,struct AVTreeNode**) ; 
 struct AVTreeNode* FUNC9 () ; 
 int /*<<< orphan*/  ft_glyph_bbox_pixels ; 
 int /*<<< orphan*/  glyph_cmp ; 

__attribute__((used)) static int FUNC10(AVFilterContext *ctx, Glyph **glyph_ptr, uint32_t code)
{
    DrawTextContext *s = ctx->priv;
    FT_BitmapGlyph bitmapglyph;
    Glyph *glyph;
    struct AVTreeNode *node = NULL;
    int ret;

    /* load glyph into s->face->glyph */
    if (FUNC5(s->face, code, s->ft_load_flags))
        return FUNC0(EINVAL);

    glyph = FUNC7(sizeof(*glyph));
    if (!glyph) {
        ret = FUNC0(ENOMEM);
        goto error;
    }
    glyph->code  = code;
    glyph->fontsize = s->fontsize;

    if (FUNC1(s->face->glyph, &glyph->glyph)) {
        ret = FUNC0(EINVAL);
        goto error;
    }
    if (s->borderw) {
        glyph->border_glyph = glyph->glyph;
        if (FUNC3(&glyph->border_glyph, s->stroker, 0, 0) ||
            FUNC4(&glyph->border_glyph, FT_RENDER_MODE_NORMAL, 0, 1)) {
            ret = AVERROR_EXTERNAL;
            goto error;
        }
        bitmapglyph = (FT_BitmapGlyph) glyph->border_glyph;
        glyph->border_bitmap = bitmapglyph->bitmap;
    }
    if (FUNC4(&glyph->glyph, FT_RENDER_MODE_NORMAL, 0, 1)) {
        ret = AVERROR_EXTERNAL;
        goto error;
    }
    bitmapglyph = (FT_BitmapGlyph) glyph->glyph;

    glyph->bitmap      = bitmapglyph->bitmap;
    glyph->bitmap_left = bitmapglyph->left;
    glyph->bitmap_top  = bitmapglyph->top;
    glyph->advance     = s->face->glyph->advance.x >> 6;

    /* measure text height to calculate text_height (or the maximum text height) */
    FUNC2(glyph->glyph, ft_glyph_bbox_pixels, &glyph->bbox);

    /* cache the newly created glyph */
    if (!(node = FUNC9())) {
        ret = FUNC0(ENOMEM);
        goto error;
    }
    FUNC8(&s->glyphs, glyph, glyph_cmp, &node);

    if (glyph_ptr)
        *glyph_ptr = glyph;
    return 0;

error:
    if (glyph)
        FUNC6(&glyph->glyph);

    FUNC6(&glyph);
    FUNC6(&node);
    return ret;
}