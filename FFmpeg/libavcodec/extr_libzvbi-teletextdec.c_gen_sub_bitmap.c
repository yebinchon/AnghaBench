
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_14__ {int columns; int rows; int * color_map; int pgno; TYPE_2__* text; } ;
typedef TYPE_1__ vbi_page ;
struct TYPE_15__ {scalar_t__ opacity; } ;
typedef TYPE_2__ vbi_char ;
typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_16__ {int opacity; scalar_t__ y_offset; int x_offset; } ;
typedef TYPE_3__ TeletextContext ;
struct TYPE_17__ {int* linesize; int w; int h; int nb_colors; int type; void** data; scalar_t__ y; int x; } ;
typedef TYPE_4__ AVSubtitleRect ;


 int AVERROR (int ) ;
 int AVPALETTE_SIZE ;
 int AV_LOG_DEBUG ;
 int BITMAP_CHAR_HEIGHT ;
 int BITMAP_CHAR_WIDTH ;
 int ENOMEM ;
 int RGBA (int,int,int,int) ;
 int SUBTITLE_BITMAP ;
 int SUBTITLE_NONE ;
 int VBI_A (int ) ;
 int VBI_B (int ) ;
 int VBI_G (int ) ;
 int VBI_NB_COLORS ;
 int VBI_PIXFMT_PAL8 ;
 int VBI_R (int ) ;
 size_t VBI_TRANSPARENT_BLACK ;
 scalar_t__ VBI_TRANSPARENT_SPACE ;
 int av_freep (void**) ;
 int av_log (TYPE_3__*,int ,char*,int ) ;
 void* av_mallocz (int) ;
 int ff_dlog (TYPE_3__*,char*,int ) ;
 int fix_transparency (TYPE_3__*,TYPE_4__*,TYPE_1__*,int,int,int) ;
 int vbi_draw_vt_page_region (TYPE_1__*,int ,void*,int,int ,int,int,int,int,int) ;

__attribute__((used)) static int gen_sub_bitmap(TeletextContext *ctx, AVSubtitleRect *sub_rect, vbi_page *page, int chop_top)
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
        av_log(ctx, AV_LOG_DEBUG, "dropping empty page %3x\n", page->pgno);
        sub_rect->type = SUBTITLE_NONE;
        return 0;
    }

    sub_rect->data[0] = av_mallocz(resx * resy);
    sub_rect->linesize[0] = resx;
    if (!sub_rect->data[0])
        return AVERROR(ENOMEM);

    vbi_draw_vt_page_region(page, VBI_PIXFMT_PAL8,
                            sub_rect->data[0], sub_rect->linesize[0],
                            0, chop_top, page->columns, page->rows - chop_top,
                                       1, 1);

    fix_transparency(ctx, sub_rect, page, chop_top, resx, resy);
    sub_rect->x = ctx->x_offset;
    sub_rect->y = ctx->y_offset + chop_top * BITMAP_CHAR_HEIGHT;
    sub_rect->w = resx;
    sub_rect->h = resy;
    sub_rect->nb_colors = ctx->opacity > 0 && ctx->opacity < 255 ? 2 * VBI_NB_COLORS : VBI_NB_COLORS;
    sub_rect->data[1] = av_mallocz(AVPALETTE_SIZE);
    if (!sub_rect->data[1]) {
        av_freep(&sub_rect->data[0]);
        return AVERROR(ENOMEM);
    }
    for (ci = 0; ci < VBI_NB_COLORS; ci++) {
        int r, g, b, a;

        r = VBI_R(page->color_map[ci]);
        g = VBI_G(page->color_map[ci]);
        b = VBI_B(page->color_map[ci]);
        a = VBI_A(page->color_map[ci]);
        ((uint32_t *)sub_rect->data[1])[ci] = RGBA(r, g, b, a);
        ((uint32_t *)sub_rect->data[1])[ci + VBI_NB_COLORS] = RGBA(r, g, b, ctx->opacity);
        ff_dlog(ctx, "palette %0x\n", ((uint32_t *)sub_rect->data[1])[ci]);
    }
    ((uint32_t *)sub_rect->data[1])[VBI_TRANSPARENT_BLACK] = RGBA(0, 0, 0, 0);
    ((uint32_t *)sub_rect->data[1])[VBI_TRANSPARENT_BLACK + VBI_NB_COLORS] = RGBA(0, 0, 0, 0);
    sub_rect->type = SUBTITLE_BITMAP;
    return 0;
}
