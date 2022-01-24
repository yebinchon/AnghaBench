#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_8__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_14__ {int /*<<< orphan*/  buffer; } ;
struct TYPE_13__ {int* linesize; int height; scalar_t__* data; } ;
struct TYPE_12__ {int transparent_color_index; int screen_width; int screen_height; scalar_t__ gce_prev_disposal; int gce_l; int gce_t; int gce_w; int gce_h; scalar_t__ gce_disposal; size_t* idx_line; TYPE_8__ gb; int /*<<< orphan*/  lzw; int /*<<< orphan*/  avctx; int /*<<< orphan*/ * stored_img; int /*<<< orphan*/  stored_img_size; int /*<<< orphan*/  bg_color; int /*<<< orphan*/  stored_bg_color; int /*<<< orphan*/  trans_color; scalar_t__ has_global_palette; scalar_t__ keyframe; int /*<<< orphan*/ * global_palette; int /*<<< orphan*/ * local_palette; } ;
typedef  TYPE_1__ GifState ;
typedef  TYPE_2__ AVFrame ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  AV_LOG_WARNING ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FF_LZW_GIF ; 
 scalar_t__ GCE_DISPOSAL_BACKGROUND ; 
 scalar_t__ GCE_DISPOSAL_NONE ; 
 scalar_t__ GCE_DISPOSAL_RESTORE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 int FUNC3 (TYPE_8__*) ; 
 int FUNC4 (TYPE_8__*) ; 
 int FUNC5 (TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_8__*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int,int,int,int) ; 
 int FUNC8 (int /*<<< orphan*/ ,size_t*,int) ; 
 int FUNC9 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*,int /*<<< orphan*/ ,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC15(GifState *s, AVFrame *frame)
{
    int left, top, width, height, bits_per_pixel, code_size, flags, pw;
    int is_interleaved, has_local_palette, y, pass, y1, linesize, pal_size, lzwed_len;
    uint32_t *ptr, *pal, *px, *pr, *ptr1;
    int ret;
    uint8_t *idx;

    /* At least 9 bytes of Image Descriptor. */
    if (FUNC3(&s->gb) < 9)
        return AVERROR_INVALIDDATA;

    left   = FUNC5(&s->gb);
    top    = FUNC5(&s->gb);
    width  = FUNC5(&s->gb);
    height = FUNC5(&s->gb);
    flags  = FUNC4(&s->gb);
    is_interleaved = flags & 0x40;
    has_local_palette = flags & 0x80;
    bits_per_pixel = (flags & 0x07) + 1;

    FUNC7(s->avctx, "image x=%d y=%d w=%d h=%d\n", left, top, width, height);

    if (has_local_palette) {
        pal_size = 1 << bits_per_pixel;

        if (FUNC3(&s->gb) < pal_size * 3)
            return AVERROR_INVALIDDATA;

        FUNC14(s, s->local_palette, pal_size);
        pal = s->local_palette;
    } else {
        if (!s->has_global_palette) {
            FUNC2(s->avctx, AV_LOG_ERROR, "picture doesn't have either global or local palette.\n");
            return AVERROR_INVALIDDATA;
        }

        pal = s->global_palette;
    }

    if (s->keyframe) {
        if (s->transparent_color_index == -1 && s->has_global_palette) {
            /* transparency wasn't set before the first frame, fill with background color */
            FUNC12(frame, s->bg_color);
        } else {
            /* otherwise fill with transparent color.
             * this is necessary since by default picture filled with 0x80808080. */
            FUNC12(frame, s->trans_color);
        }
    }

    /* verify that all the image is inside the screen dimensions */
    if (!width || width > s->screen_width) {
        FUNC2(s->avctx, AV_LOG_WARNING, "Invalid image width: %d, truncating.\n", width);
        width = s->screen_width;
    }
    if (left >= s->screen_width) {
        FUNC2(s->avctx, AV_LOG_ERROR, "Invalid left position: %d.\n", left);
        return AVERROR_INVALIDDATA;
    }
    if (!height || height > s->screen_height) {
        FUNC2(s->avctx, AV_LOG_WARNING, "Invalid image height: %d, truncating.\n", height);
        height = s->screen_height;
    }
    if (top >= s->screen_height) {
        FUNC2(s->avctx, AV_LOG_ERROR, "Invalid top position: %d.\n", top);
        return AVERROR_INVALIDDATA;
    }
    if (left + width > s->screen_width) {
        /* width must be kept around to avoid lzw vs line desync */
        pw = s->screen_width - left;
        FUNC2(s->avctx, AV_LOG_WARNING, "Image too wide by %d, truncating.\n",
               left + width - s->screen_width);
    } else {
        pw = width;
    }
    if (top + height > s->screen_height) {
        /* we don't care about the extra invisible lines */
        FUNC2(s->avctx, AV_LOG_WARNING, "Image too high by %d, truncating.\n",
               top + height - s->screen_height);
        height = s->screen_height - top;
    }

    /* process disposal method */
    if (s->gce_prev_disposal == GCE_DISPOSAL_BACKGROUND) {
        FUNC13(frame, s->stored_bg_color, s->gce_l, s->gce_t, s->gce_w, s->gce_h);
    } else if (s->gce_prev_disposal == GCE_DISPOSAL_RESTORE) {
        FUNC11(s->stored_img, (uint32_t *)frame->data[0],
            frame->linesize[0] / sizeof(uint32_t), s->gce_l, s->gce_t, s->gce_w, s->gce_h);
    }

    s->gce_prev_disposal = s->gce_disposal;

    if (s->gce_disposal != GCE_DISPOSAL_NONE) {
        s->gce_l = left;  s->gce_t = top;
        s->gce_w = pw;    s->gce_h = height;

        if (s->gce_disposal == GCE_DISPOSAL_BACKGROUND) {
            if (s->transparent_color_index >= 0)
                s->stored_bg_color = s->trans_color;
            else
                s->stored_bg_color = s->bg_color;
        } else if (s->gce_disposal == GCE_DISPOSAL_RESTORE) {
            FUNC1(&s->stored_img, &s->stored_img_size, frame->linesize[0] * frame->height);
            if (!s->stored_img)
                return FUNC0(ENOMEM);

            FUNC11((uint32_t *)frame->data[0], s->stored_img,
                frame->linesize[0] / sizeof(uint32_t), left, top, pw, height);
        }
    }

    /* Expect at least 2 bytes: 1 for lzw code size and 1 for block size. */
    if (FUNC3(&s->gb) < 2)
        return AVERROR_INVALIDDATA;

    /* now get the image data */
    code_size = FUNC4(&s->gb);
    if ((ret = FUNC9(s->lzw, code_size, s->gb.buffer,
                                  FUNC3(&s->gb), FF_LZW_GIF)) < 0) {
        FUNC2(s->avctx, AV_LOG_ERROR, "LZW init failed\n");
        return ret;
    }

    /* read all the image */
    linesize = frame->linesize[0] / sizeof(uint32_t);
    ptr1 = (uint32_t *)frame->data[0] + top * linesize + left;
    ptr = ptr1;
    pass = 0;
    y1 = 0;
    for (y = 0; y < height; y++) {
        int count = FUNC8(s->lzw, s->idx_line, width);
        if (count != width) {
            if (count)
                FUNC2(s->avctx, AV_LOG_ERROR, "LZW decode failed\n");
            goto decode_tail;
        }

        pr = ptr + pw;

        for (px = ptr, idx = s->idx_line; px < pr; px++, idx++) {
            if (*idx != s->transparent_color_index)
                *px = pal[*idx];
        }

        if (is_interleaved) {
            switch(pass) {
            default:
            case 0:
            case 1:
                y1 += 8;
                ptr += linesize * 8;
                break;
            case 2:
                y1 += 4;
                ptr += linesize * 4;
                break;
            case 3:
                y1 += 2;
                ptr += linesize * 2;
                break;
            }
            while (y1 >= height) {
                y1  = 4 >> pass;
                ptr = ptr1 + linesize * y1;
                pass++;
            }
        } else {
            ptr += linesize;
        }
    }

 decode_tail:
    /* read the garbage data until end marker is found */
    lzwed_len = FUNC10(s->lzw);
    FUNC6(&s->gb, lzwed_len);

    /* Graphic Control Extension's scope is single frame.
     * Remove its influence. */
    s->transparent_color_index = -1;
    s->gce_disposal = GCE_DISPOSAL_NONE;

    return 0;
}