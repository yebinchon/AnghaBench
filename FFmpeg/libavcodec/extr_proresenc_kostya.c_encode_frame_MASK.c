#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
struct TYPE_18__ {int width; int height; int flags; int (* execute2 ) (TYPE_4__*,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *,int) ;TYPE_1__* priv_data; } ;
struct TYPE_17__ {int color_primaries; int color_trc; int colorspace; scalar_t__ top_field_first; } ;
struct TYPE_16__ {int* data; int size; int /*<<< orphan*/  flags; } ;
struct TYPE_15__ {int num_planes; int frame_size_upper_bound; int pictures_per_frame; int slices_per_picture; int chroma_factor; int alpha_bits; scalar_t__ quant_sel; int* quant_mat; int cur_picture_idx; int mbs_per_slice; int force_quant; int mb_height; int mb_width; int* slice_q; int slices_width; int warn; int /*<<< orphan*/  vendor; TYPE_3__ const* pic; } ;
typedef  int /*<<< orphan*/  PutBitContext ;
typedef  TYPE_1__ ProresContext ;
typedef  TYPE_2__ AVPacket ;
typedef  TYPE_3__ AVFrame ;
typedef  TYPE_4__ AVCodecContext ;

/* Variables and functions */
 int AV_CODEC_FLAG_INTERLACED_DCT ; 
 scalar_t__ AV_INPUT_BUFFER_MIN_SIZE ; 
 int /*<<< orphan*/  AV_PKT_FLAG_KEY ; 
 int FUNC0 (int,int) ; 
 int FRAME_ID ; 
 scalar_t__ QUANT_MAT_DEFAULT ; 
 int FUNC1 (TYPE_2__*,int) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,char*,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int**,int) ; 
 int /*<<< orphan*/  FUNC5 (int**,int) ; 
 int /*<<< orphan*/  FUNC6 (int**,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int**,int) ; 
 int FUNC8 (TYPE_4__*,TYPE_3__ const*,int /*<<< orphan*/ *,int*,int,int,int,int) ; 
 int FUNC9 (TYPE_4__*,TYPE_2__*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  find_quant_thread ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int*,int) ; 
 int FUNC11 (TYPE_4__*,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC12(AVCodecContext *avctx, AVPacket *pkt,
                        const AVFrame *pic, int *got_packet)
{
    ProresContext *ctx = avctx->priv_data;
    uint8_t *orig_buf, *buf, *slice_hdr, *slice_sizes, *tmp;
    uint8_t *picture_size_pos;
    PutBitContext pb;
    int x, y, i, mb, q = 0;
    int sizes[4] = { 0 };
    int slice_hdr_size = 2 + 2 * (ctx->num_planes - 1);
    int frame_size, picture_size, slice_size;
    int pkt_size, ret;
    int max_slice_size = (ctx->frame_size_upper_bound - 200) / (ctx->pictures_per_frame * ctx->slices_per_picture + 1);
    uint8_t frame_flags;

    ctx->pic = pic;
    pkt_size = ctx->frame_size_upper_bound;

    if ((ret = FUNC9(avctx, pkt, pkt_size + AV_INPUT_BUFFER_MIN_SIZE, 0)) < 0)
        return ret;

    orig_buf = pkt->data;

    // frame atom
    orig_buf += 4;                              // frame size
    FUNC5  (&orig_buf, FRAME_ID); // frame container ID
    buf = orig_buf;

    // frame header
    tmp = buf;
    buf += 2;                                   // frame header size will be stored here
    FUNC4  (&buf, 0);             // version 1
    FUNC6(&buf, ctx->vendor, 4);
    FUNC4  (&buf, avctx->width);
    FUNC4  (&buf, avctx->height);

    frame_flags = ctx->chroma_factor << 6;
    if (avctx->flags & AV_CODEC_FLAG_INTERLACED_DCT)
        frame_flags |= pic->top_field_first ? 0x04 : 0x08;
    FUNC7  (&buf, frame_flags);

    FUNC7  (&buf, 0);             // reserved
    FUNC7  (&buf, pic->color_primaries);
    FUNC7  (&buf, pic->color_trc);
    FUNC7  (&buf, pic->colorspace);
    FUNC7  (&buf, 0x40 | (ctx->alpha_bits >> 3));
    FUNC7  (&buf, 0);             // reserved
    if (ctx->quant_sel != QUANT_MAT_DEFAULT) {
        FUNC7  (&buf, 0x03);      // matrix flags - both matrices are present
        // luma quantisation matrix
        for (i = 0; i < 64; i++)
            FUNC7(&buf, ctx->quant_mat[i]);
        // chroma quantisation matrix
        for (i = 0; i < 64; i++)
            FUNC7(&buf, ctx->quant_mat[i]);
    } else {
        FUNC7  (&buf, 0x00);      // matrix flags - default matrices are used
    }
    FUNC4  (&tmp, buf - orig_buf); // write back frame header size

    for (ctx->cur_picture_idx = 0;
         ctx->cur_picture_idx < ctx->pictures_per_frame;
         ctx->cur_picture_idx++) {
        // picture header
        picture_size_pos = buf + 1;
        FUNC7  (&buf, 0x40);          // picture header size (in bits)
        buf += 4;                                   // picture data size will be stored here
        FUNC4  (&buf, ctx->slices_per_picture);
        FUNC7  (&buf, FUNC2(ctx->mbs_per_slice) << 4); // slice width and height in MBs

        // seek table - will be filled during slice encoding
        slice_sizes = buf;
        buf += ctx->slices_per_picture * 2;

        // slices
        if (!ctx->force_quant) {
            ret = avctx->execute2(avctx, find_quant_thread, (void*)pic, NULL,
                                  ctx->mb_height);
            if (ret)
                return ret;
        }

        for (y = 0; y < ctx->mb_height; y++) {
            int mbs_per_slice = ctx->mbs_per_slice;
            for (x = mb = 0; x < ctx->mb_width; x += mbs_per_slice, mb++) {
                q = ctx->force_quant ? ctx->force_quant
                                     : ctx->slice_q[mb + y * ctx->slices_width];

                while (ctx->mb_width - x < mbs_per_slice)
                    mbs_per_slice >>= 1;

                FUNC7(&buf, slice_hdr_size << 3);
                slice_hdr = buf;
                buf += slice_hdr_size - 1;
                if (pkt_size <= buf - orig_buf + 2 * max_slice_size) {
                    uint8_t *start = pkt->data;
                    // Recompute new size according to max_slice_size
                    // and deduce delta
                    int delta = 200 + (ctx->pictures_per_frame *
                                ctx->slices_per_picture + 1) *
                                max_slice_size - pkt_size;

                    delta = FUNC0(delta, 2 * max_slice_size);
                    ctx->frame_size_upper_bound += delta;

                    if (!ctx->warn) {
                        FUNC3(avctx,
                                              "Packet too small: is %i,"
                                              " needs %i (slice: %i). "
                                              "Correct allocation",
                                              pkt_size, delta, max_slice_size);
                        ctx->warn = 1;
                    }

                    ret = FUNC1(pkt, delta);
                    if (ret < 0)
                        return ret;

                    pkt_size += delta;
                    // restore pointers
                    orig_buf         = pkt->data + (orig_buf         - start);
                    buf              = pkt->data + (buf              - start);
                    picture_size_pos = pkt->data + (picture_size_pos - start);
                    slice_sizes      = pkt->data + (slice_sizes      - start);
                    slice_hdr        = pkt->data + (slice_hdr        - start);
                    tmp              = pkt->data + (tmp              - start);
                }
                FUNC10(&pb, buf, (pkt_size - (buf - orig_buf)));
                ret = FUNC8(avctx, pic, &pb, sizes, x, y, q,
                                   mbs_per_slice);
                if (ret < 0)
                    return ret;

                FUNC7(&slice_hdr, q);
                slice_size = slice_hdr_size + sizes[ctx->num_planes - 1];
                for (i = 0; i < ctx->num_planes - 1; i++) {
                    FUNC4(&slice_hdr, sizes[i]);
                    slice_size += sizes[i];
                }
                FUNC4(&slice_sizes, slice_size);
                buf += slice_size - slice_hdr_size;
                if (max_slice_size < slice_size)
                    max_slice_size = slice_size;
            }
        }

        picture_size = buf - (picture_size_pos - 1);
        FUNC5(&picture_size_pos, picture_size);
    }

    orig_buf -= 8;
    frame_size = buf - orig_buf;
    FUNC5(&orig_buf, frame_size);

    pkt->size   = frame_size;
    pkt->flags |= AV_PKT_FLAG_KEY;
    *got_packet = 1;

    return 0;
}