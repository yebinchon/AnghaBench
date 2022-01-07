
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;
typedef struct TYPE_15__ TYPE_12__ ;


typedef int uint8_t ;
typedef enum ImageRole { ____Placeholder_ImageRole } ImageRole ;
struct TYPE_16__ {int nb_huffman_groups; int reduced_width; int avctx; int gb; TYPE_3__* image; } ;
typedef TYPE_1__ WebPContext ;
struct TYPE_17__ {TYPE_12__* f; } ;
typedef TYPE_2__ ThreadFrame ;
struct TYPE_18__ {int role; int color_cache_bits; int nb_huffman_groups; int * color_cache; TYPE_12__* frame; int * huffman_groups; int is_alpha_primary; } ;
struct TYPE_15__ {int width; int height; int format; } ;
typedef TYPE_3__ ImageContext ;
typedef int HuffReader ;


 int AVERROR (int ) ;
 int AVERROR_INVALIDDATA ;
 int AV_COPY32 (int*,int*) ;
 int AV_LOG_ERROR ;
 int AV_PIX_FMT_ARGB ;
 int AV_RB32 (int*) ;
 int AV_WB32 (int*,int ) ;
 int ENOMEM ;
 int FFMAX (int,int) ;
 int* GET_PIXEL (TYPE_12__*,int,int) ;
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
 TYPE_12__* av_frame_alloc () ;
 int av_frame_get_buffer (TYPE_12__*,int) ;
 int av_log (int ,int ,char*,...) ;
 void* av_mallocz_array (int,int) ;
 int color_cache_put (TYPE_3__*,int ) ;
 int decode_entropy_image (TYPE_1__*) ;
 int ff_thread_get_buffer (int ,TYPE_2__*,int ) ;
 int get_bits (int *,int) ;
 scalar_t__ get_bits1 (int *) ;
 int * get_huffman_group (TYPE_1__*,TYPE_3__*,int,int) ;
 void* huff_reader_get_symbol (int *,int *) ;
 int** lz77_distance_offsets ;
 int read_huffman_code_normal (TYPE_1__*,int *,int) ;
 int read_huffman_code_simple (TYPE_1__*,int *) ;

__attribute__((used)) static int decode_entropy_coded_image(WebPContext *s, enum ImageRole role,
                                      int w, int h)
{
    ImageContext *img;
    HuffReader *hg;
    int i, j, ret, x, y, width;

    img = &s->image[role];
    img->role = role;

    if (!img->frame) {
        img->frame = av_frame_alloc();
        if (!img->frame)
            return AVERROR(ENOMEM);
    }

    img->frame->format = AV_PIX_FMT_ARGB;
    img->frame->width = w;
    img->frame->height = h;

    if (role == IMAGE_ROLE_ARGB && !img->is_alpha_primary) {
        ThreadFrame pt = { .f = img->frame };
        ret = ff_thread_get_buffer(s->avctx, &pt, 0);
    } else
        ret = av_frame_get_buffer(img->frame, 1);
    if (ret < 0)
        return ret;

    if (get_bits1(&s->gb)) {
        img->color_cache_bits = get_bits(&s->gb, 4);
        if (img->color_cache_bits < 1 || img->color_cache_bits > 11) {
            av_log(s->avctx, AV_LOG_ERROR, "invalid color cache bits: %d\n",
                   img->color_cache_bits);
            return AVERROR_INVALIDDATA;
        }
        img->color_cache = av_mallocz_array(1 << img->color_cache_bits,
                                            sizeof(*img->color_cache));
        if (!img->color_cache)
            return AVERROR(ENOMEM);
    } else {
        img->color_cache_bits = 0;
    }

    img->nb_huffman_groups = 1;
    if (role == IMAGE_ROLE_ARGB && get_bits1(&s->gb)) {
        ret = decode_entropy_image(s);
        if (ret < 0)
            return ret;
        img->nb_huffman_groups = s->nb_huffman_groups;
    }
    img->huffman_groups = av_mallocz_array(img->nb_huffman_groups *
                                           HUFFMAN_CODES_PER_META_CODE,
                                           sizeof(*img->huffman_groups));
    if (!img->huffman_groups)
        return AVERROR(ENOMEM);

    for (i = 0; i < img->nb_huffman_groups; i++) {
        hg = &img->huffman_groups[i * HUFFMAN_CODES_PER_META_CODE];
        for (j = 0; j < HUFFMAN_CODES_PER_META_CODE; j++) {
            int alphabet_size = alphabet_sizes[j];
            if (!j && img->color_cache_bits > 0)
                alphabet_size += 1 << img->color_cache_bits;

            if (get_bits1(&s->gb)) {
                read_huffman_code_simple(s, &hg[j]);
            } else {
                ret = read_huffman_code_normal(s, &hg[j], alphabet_size);
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

        hg = get_huffman_group(s, img, x, y);
        v = huff_reader_get_symbol(&hg[HUFF_IDX_GREEN], &s->gb);
        if (v < NUM_LITERAL_CODES) {

            uint8_t *p = GET_PIXEL(img->frame, x, y);
            p[2] = v;
            p[1] = huff_reader_get_symbol(&hg[HUFF_IDX_RED], &s->gb);
            p[3] = huff_reader_get_symbol(&hg[HUFF_IDX_BLUE], &s->gb);
            p[0] = huff_reader_get_symbol(&hg[HUFF_IDX_ALPHA], &s->gb);
            if (img->color_cache_bits)
                color_cache_put(img, AV_RB32(p));
            x++;
            if (x == width) {
                x = 0;
                y++;
            }
        } else if (v < NUM_LITERAL_CODES + NUM_LENGTH_CODES) {

            int prefix_code, length, distance, ref_x, ref_y;


            prefix_code = v - NUM_LITERAL_CODES;
            if (prefix_code < 4) {
                length = prefix_code + 1;
            } else {
                int extra_bits = (prefix_code - 2) >> 1;
                int offset = 2 + (prefix_code & 1) << extra_bits;
                length = offset + get_bits(&s->gb, extra_bits) + 1;
            }
            prefix_code = huff_reader_get_symbol(&hg[HUFF_IDX_DIST], &s->gb);
            if (prefix_code > 39U) {
                av_log(s->avctx, AV_LOG_ERROR,
                       "distance prefix code too large: %d\n", prefix_code);
                return AVERROR_INVALIDDATA;
            }
            if (prefix_code < 4) {
                distance = prefix_code + 1;
            } else {
                int extra_bits = prefix_code - 2 >> 1;
                int offset = 2 + (prefix_code & 1) << extra_bits;
                distance = offset + get_bits(&s->gb, extra_bits) + 1;
            }


            if (distance <= NUM_SHORT_DISTANCES) {
                int xi = lz77_distance_offsets[distance - 1][0];
                int yi = lz77_distance_offsets[distance - 1][1];
                distance = FFMAX(1, xi + yi * width);
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
            ref_x = FFMAX(0, ref_x);
            ref_y = FFMAX(0, ref_y);




            for (i = 0; i < length; i++) {
                uint8_t *p_ref = GET_PIXEL(img->frame, ref_x, ref_y);
                uint8_t *p = GET_PIXEL(img->frame, x, y);

                AV_COPY32(p, p_ref);
                if (img->color_cache_bits)
                    color_cache_put(img, AV_RB32(p));
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

            uint8_t *p = GET_PIXEL(img->frame, x, y);
            int cache_idx = v - (NUM_LITERAL_CODES + NUM_LENGTH_CODES);

            if (!img->color_cache_bits) {
                av_log(s->avctx, AV_LOG_ERROR, "color cache not found\n");
                return AVERROR_INVALIDDATA;
            }
            if (cache_idx >= 1 << img->color_cache_bits) {
                av_log(s->avctx, AV_LOG_ERROR,
                       "color cache index out-of-bounds\n");
                return AVERROR_INVALIDDATA;
            }
            AV_WB32(p, img->color_cache[cache_idx]);
            x++;
            if (x == width) {
                x = 0;
                y++;
            }
        }
    }

    return 0;
}
