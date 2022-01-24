#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;
typedef  struct TYPE_15__   TYPE_12__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  enum ImageRole { ____Placeholder_ImageRole } ImageRole ;
struct TYPE_16__ {int nb_huffman_groups; int reduced_width; int /*<<< orphan*/  avctx; int /*<<< orphan*/  gb; TYPE_3__* image; } ;
typedef  TYPE_1__ WebPContext ;
struct TYPE_17__ {TYPE_12__* f; } ;
typedef  TYPE_2__ ThreadFrame ;
struct TYPE_18__ {int role; int color_cache_bits; int nb_huffman_groups; int /*<<< orphan*/ * color_cache; TYPE_12__* frame; int /*<<< orphan*/ * huffman_groups; int /*<<< orphan*/  is_alpha_primary; } ;
struct TYPE_15__ {int width; int height; int /*<<< orphan*/  format; } ;
typedef  TYPE_3__ ImageContext ;
typedef  int /*<<< orphan*/  HuffReader ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  FUNC1 (int*,int*) ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  AV_PIX_FMT_ARGB ; 
 int /*<<< orphan*/  FUNC2 (int*) ; 
 int /*<<< orphan*/  FUNC3 (int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOMEM ; 
 int FUNC4 (int,int) ; 
 int* FUNC5 (TYPE_12__*,int,int) ; 
 int HUFFMAN_CODES_PER_META_CODE ; 
 size_t HUFF_IDX_ALPHA ; 
 size_t HUFF_IDX_BLUE ; 
 size_t HUFF_IDX_DIST ; 
 size_t HUFF_IDX_GREEN ; 
 size_t HUFF_IDX_RED ; 
 int IMAGE_ROLE_ARGB ; 
 int NUM_LENGTH_CODES ; 
 int NUM_LITERAL_CODES ; 
 int NUM_SHORT_DISTANCES ; 
 int* alphabet_sizes ; 
 TYPE_12__* FUNC6 () ; 
 int FUNC7 (TYPE_12__*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 void* FUNC9 (int,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int FUNC11 (TYPE_1__*) ; 
 int FUNC12 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int FUNC13 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC15 (TYPE_1__*,TYPE_3__*,int,int) ; 
 void* FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int** lz77_distance_offsets ; 
 int FUNC17 (TYPE_1__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_1__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC19(WebPContext *s, enum ImageRole role,
                                      int w, int h)
{
    ImageContext *img;
    HuffReader *hg;
    int i, j, ret, x, y, width;

    img       = &s->image[role];
    img->role = role;

    if (!img->frame) {
        img->frame = FUNC6();
        if (!img->frame)
            return FUNC0(ENOMEM);
    }

    img->frame->format = AV_PIX_FMT_ARGB;
    img->frame->width  = w;
    img->frame->height = h;

    if (role == IMAGE_ROLE_ARGB && !img->is_alpha_primary) {
        ThreadFrame pt = { .f = img->frame };
        ret = FUNC12(s->avctx, &pt, 0);
    } else
        ret = FUNC7(img->frame, 1);
    if (ret < 0)
        return ret;

    if (FUNC14(&s->gb)) {
        img->color_cache_bits = FUNC13(&s->gb, 4);
        if (img->color_cache_bits < 1 || img->color_cache_bits > 11) {
            FUNC8(s->avctx, AV_LOG_ERROR, "invalid color cache bits: %d\n",
                   img->color_cache_bits);
            return AVERROR_INVALIDDATA;
        }
        img->color_cache = FUNC9(1 << img->color_cache_bits,
                                            sizeof(*img->color_cache));
        if (!img->color_cache)
            return FUNC0(ENOMEM);
    } else {
        img->color_cache_bits = 0;
    }

    img->nb_huffman_groups = 1;
    if (role == IMAGE_ROLE_ARGB && FUNC14(&s->gb)) {
        ret = FUNC11(s);
        if (ret < 0)
            return ret;
        img->nb_huffman_groups = s->nb_huffman_groups;
    }
    img->huffman_groups = FUNC9(img->nb_huffman_groups *
                                           HUFFMAN_CODES_PER_META_CODE,
                                           sizeof(*img->huffman_groups));
    if (!img->huffman_groups)
        return FUNC0(ENOMEM);

    for (i = 0; i < img->nb_huffman_groups; i++) {
        hg = &img->huffman_groups[i * HUFFMAN_CODES_PER_META_CODE];
        for (j = 0; j < HUFFMAN_CODES_PER_META_CODE; j++) {
            int alphabet_size = alphabet_sizes[j];
            if (!j && img->color_cache_bits > 0)
                alphabet_size += 1 << img->color_cache_bits;

            if (FUNC14(&s->gb)) {
                FUNC18(s, &hg[j]);
            } else {
                ret = FUNC17(s, &hg[j], alphabet_size);
                if (ret < 0)
                    return ret;
            }
        }
    }

    width = img->frame->width;
    if (role == IMAGE_ROLE_ARGB && s->reduced_width > 0)
        width = s->reduced_width;

    x = 0; y = 0;
    while (y < img->frame->height) {
        int v;

        hg = FUNC15(s, img, x, y);
        v = FUNC16(&hg[HUFF_IDX_GREEN], &s->gb);
        if (v < NUM_LITERAL_CODES) {
            /* literal pixel values */
            uint8_t *p = FUNC5(img->frame, x, y);
            p[2] = v;
            p[1] = FUNC16(&hg[HUFF_IDX_RED],   &s->gb);
            p[3] = FUNC16(&hg[HUFF_IDX_BLUE],  &s->gb);
            p[0] = FUNC16(&hg[HUFF_IDX_ALPHA], &s->gb);
            if (img->color_cache_bits)
                FUNC10(img, FUNC2(p));
            x++;
            if (x == width) {
                x = 0;
                y++;
            }
        } else if (v < NUM_LITERAL_CODES + NUM_LENGTH_CODES) {
            /* LZ77 backwards mapping */
            int prefix_code, length, distance, ref_x, ref_y;

            /* parse length and distance */
            prefix_code = v - NUM_LITERAL_CODES;
            if (prefix_code < 4) {
                length = prefix_code + 1;
            } else {
                int extra_bits = (prefix_code - 2) >> 1;
                int offset     = (2 + (prefix_code & 1)) << extra_bits;
                length = offset + FUNC13(&s->gb, extra_bits) + 1;
            }
            prefix_code = FUNC16(&hg[HUFF_IDX_DIST], &s->gb);
            if (prefix_code > 39U) {
                FUNC8(s->avctx, AV_LOG_ERROR,
                       "distance prefix code too large: %d\n", prefix_code);
                return AVERROR_INVALIDDATA;
            }
            if (prefix_code < 4) {
                distance = prefix_code + 1;
            } else {
                int extra_bits = (prefix_code - 2) >> 1;
                int offset     = (2 + (prefix_code & 1)) << extra_bits;
                distance = offset + FUNC13(&s->gb, extra_bits) + 1;
            }

            /* find reference location */
            if (distance <= NUM_SHORT_DISTANCES) {
                int xi = lz77_distance_offsets[distance - 1][0];
                int yi = lz77_distance_offsets[distance - 1][1];
                distance = FUNC4(1, xi + yi * width);
            } else {
                distance -= NUM_SHORT_DISTANCES;
            }
            ref_x = x;
            ref_y = y;
            if (distance <= x) {
                ref_x -= distance;
                distance = 0;
            } else {
                ref_x = 0;
                distance -= x;
            }
            while (distance >= width) {
                ref_y--;
                distance -= width;
            }
            if (distance > 0) {
                ref_x = width - distance;
                ref_y--;
            }
            ref_x = FUNC4(0, ref_x);
            ref_y = FUNC4(0, ref_y);

            /* copy pixels
             * source and dest regions can overlap and wrap lines, so just
             * copy per-pixel */
            for (i = 0; i < length; i++) {
                uint8_t *p_ref = FUNC5(img->frame, ref_x, ref_y);
                uint8_t *p     = FUNC5(img->frame,     x,     y);

                FUNC1(p, p_ref);
                if (img->color_cache_bits)
                    FUNC10(img, FUNC2(p));
                x++;
                ref_x++;
                if (x == width) {
                    x = 0;
                    y++;
                }
                if (ref_x == width) {
                    ref_x = 0;
                    ref_y++;
                }
                if (y == img->frame->height || ref_y == img->frame->height)
                    break;
            }
        } else {
            /* read from color cache */
            uint8_t *p = FUNC5(img->frame, x, y);
            int cache_idx = v - (NUM_LITERAL_CODES + NUM_LENGTH_CODES);

            if (!img->color_cache_bits) {
                FUNC8(s->avctx, AV_LOG_ERROR, "color cache not found\n");
                return AVERROR_INVALIDDATA;
            }
            if (cache_idx >= 1 << img->color_cache_bits) {
                FUNC8(s->avctx, AV_LOG_ERROR,
                       "color cache index out-of-bounds\n");
                return AVERROR_INVALIDDATA;
            }
            FUNC3(p, img->color_cache[cache_idx]);
            x++;
            if (x == width) {
                x = 0;
                y++;
            }
        }
    }

    return 0;
}