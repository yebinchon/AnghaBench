
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_7__ ;
typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint32_t ;
struct AVTreeNode {int advance; struct AVTreeNode* glyph; int bbox; int bitmap_top; int bitmap_left; int bitmap; int border_bitmap; struct AVTreeNode* border_glyph; int fontsize; int code; } ;
struct TYPE_8__ {int x; } ;
struct TYPE_13__ {TYPE_1__ advance; } ;
struct TYPE_12__ {TYPE_7__* glyph; } ;
struct TYPE_11__ {TYPE_3__* priv; } ;
struct TYPE_10__ {int glyphs; TYPE_6__* face; int stroker; scalar_t__ borderw; int fontsize; int ft_load_flags; } ;
struct TYPE_9__ {int top; int left; int bitmap; } ;
typedef struct AVTreeNode Glyph ;
typedef TYPE_2__* FT_BitmapGlyph ;
typedef TYPE_3__ DrawTextContext ;
typedef TYPE_4__ AVFilterContext ;


 int AVERROR (int ) ;
 int AVERROR_EXTERNAL ;
 int EINVAL ;
 int ENOMEM ;
 scalar_t__ FT_Get_Glyph (TYPE_7__*,struct AVTreeNode**) ;
 int FT_Glyph_Get_CBox (struct AVTreeNode*,int ,int *) ;
 scalar_t__ FT_Glyph_StrokeBorder (struct AVTreeNode**,int ,int ,int ) ;
 scalar_t__ FT_Glyph_To_Bitmap (struct AVTreeNode**,int ,int ,int) ;
 scalar_t__ FT_Load_Char (TYPE_6__*,int ,int ) ;
 int FT_RENDER_MODE_NORMAL ;
 int av_freep (struct AVTreeNode**) ;
 struct AVTreeNode* av_mallocz (int) ;
 int av_tree_insert (int *,struct AVTreeNode*,int ,struct AVTreeNode**) ;
 struct AVTreeNode* av_tree_node_alloc () ;
 int ft_glyph_bbox_pixels ;
 int glyph_cmp ;

__attribute__((used)) static int load_glyph(AVFilterContext *ctx, Glyph **glyph_ptr, uint32_t code)
{
    DrawTextContext *s = ctx->priv;
    FT_BitmapGlyph bitmapglyph;
    Glyph *glyph;
    struct AVTreeNode *node = ((void*)0);
    int ret;


    if (FT_Load_Char(s->face, code, s->ft_load_flags))
        return AVERROR(EINVAL);

    glyph = av_mallocz(sizeof(*glyph));
    if (!glyph) {
        ret = AVERROR(ENOMEM);
        goto error;
    }
    glyph->code = code;
    glyph->fontsize = s->fontsize;

    if (FT_Get_Glyph(s->face->glyph, &glyph->glyph)) {
        ret = AVERROR(EINVAL);
        goto error;
    }
    if (s->borderw) {
        glyph->border_glyph = glyph->glyph;
        if (FT_Glyph_StrokeBorder(&glyph->border_glyph, s->stroker, 0, 0) ||
            FT_Glyph_To_Bitmap(&glyph->border_glyph, FT_RENDER_MODE_NORMAL, 0, 1)) {
            ret = AVERROR_EXTERNAL;
            goto error;
        }
        bitmapglyph = (FT_BitmapGlyph) glyph->border_glyph;
        glyph->border_bitmap = bitmapglyph->bitmap;
    }
    if (FT_Glyph_To_Bitmap(&glyph->glyph, FT_RENDER_MODE_NORMAL, 0, 1)) {
        ret = AVERROR_EXTERNAL;
        goto error;
    }
    bitmapglyph = (FT_BitmapGlyph) glyph->glyph;

    glyph->bitmap = bitmapglyph->bitmap;
    glyph->bitmap_left = bitmapglyph->left;
    glyph->bitmap_top = bitmapglyph->top;
    glyph->advance = s->face->glyph->advance.x >> 6;


    FT_Glyph_Get_CBox(glyph->glyph, ft_glyph_bbox_pixels, &glyph->bbox);


    if (!(node = av_tree_node_alloc())) {
        ret = AVERROR(ENOMEM);
        goto error;
    }
    av_tree_insert(&s->glyphs, glyph, glyph_cmp, &node);

    if (glyph_ptr)
        *glyph_ptr = glyph;
    return 0;

error:
    if (glyph)
        av_freep(&glyph->glyph);

    av_freep(&glyph);
    av_freep(&node);
    return ret;
}
