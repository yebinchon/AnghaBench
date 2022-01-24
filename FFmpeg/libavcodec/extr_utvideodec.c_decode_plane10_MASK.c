#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int uint16_t ;
typedef  int ptrdiff_t ;
struct TYPE_8__ {int /*<<< orphan*/  table; } ;
typedef  TYPE_2__ VLC ;
struct TYPE_7__ {int /*<<< orphan*/  (* bswap_buf ) (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ;} ;
struct TYPE_9__ {int slices; int /*<<< orphan*/  avctx; scalar_t__ slice_bits; TYPE_1__ bdsp; } ;
typedef  TYPE_3__ UtvideoContext ;
typedef  int /*<<< orphan*/  GetBitContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_INPUT_BUFFER_PADDING_SIZE ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  AV_LOG_WARNING ; 
 int FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  VLC_BITS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 int FUNC2 (int /*<<< orphan*/  const*,TYPE_2__*,int*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC9(UtvideoContext *c, int plane_no,
                          uint16_t *dst, ptrdiff_t stride,
                          int width, int height,
                          const uint8_t *src, const uint8_t *huff,
                          int use_pred)
{
    int i, j, slice, pix, ret;
    int sstart, send;
    VLC vlc;
    GetBitContext gb;
    int prev, fsym;

    if ((ret = FUNC2(huff, &vlc, &fsym)) < 0) {
        FUNC1(c->avctx, AV_LOG_ERROR, "Cannot build Huffman codes\n");
        return ret;
    }
    if (fsym >= 0) { // build_huff reported a symbol to fill slices with
        send = 0;
        for (slice = 0; slice < c->slices; slice++) {
            uint16_t *dest;

            sstart = send;
            send   = (height * (slice + 1) / c->slices);
            dest   = dst + sstart * stride;

            prev = 0x200;
            for (j = sstart; j < send; j++) {
                for (i = 0; i < width; i++) {
                    pix = fsym;
                    if (use_pred) {
                        prev += pix;
                        prev &= 0x3FF;
                        pix   = prev;
                    }
                    dest[i] = pix;
                }
                dest += stride;
            }
        }
        return 0;
    }

    send = 0;
    for (slice = 0; slice < c->slices; slice++) {
        uint16_t *dest;
        int slice_data_start, slice_data_end, slice_size;

        sstart = send;
        send   = (height * (slice + 1) / c->slices);
        dest   = dst + sstart * stride;

        // slice offset and size validation was done earlier
        slice_data_start = slice ? FUNC0(src + slice * 4 - 4) : 0;
        slice_data_end   = FUNC0(src + slice * 4);
        slice_size       = slice_data_end - slice_data_start;

        if (!slice_size) {
            FUNC1(c->avctx, AV_LOG_ERROR, "Plane has more than one symbol "
                   "yet a slice has a length of zero.\n");
            goto fail;
        }

        FUNC7(c->slice_bits + slice_size, 0, AV_INPUT_BUFFER_PADDING_SIZE);
        c->bdsp.bswap_buf((uint32_t *) c->slice_bits,
                          (uint32_t *)(src + slice_data_start + c->slices * 4),
                          (slice_data_end - slice_data_start + 3) >> 2);
        FUNC6(&gb, c->slice_bits, slice_size * 8);

        prev = 0x200;
        for (j = sstart; j < send; j++) {
            for (i = 0; i < width; i++) {
                pix = FUNC5(&gb, vlc.table, VLC_BITS, 3);
                if (pix < 0) {
                    FUNC1(c->avctx, AV_LOG_ERROR, "Decoding error\n");
                    goto fail;
                }
                if (use_pred) {
                    prev += pix;
                    prev &= 0x3FF;
                    pix   = prev;
                }
                dest[i] = pix;
            }
            dest += stride;
            if (FUNC4(&gb) < 0) {
                FUNC1(c->avctx, AV_LOG_ERROR,
                        "Slice decoding ran out of bits\n");
                goto fail;
            }
        }
        if (FUNC4(&gb) > 32)
            FUNC1(c->avctx, AV_LOG_WARNING,
                   "%d bits left after decoding slice\n", FUNC4(&gb));
    }

    FUNC3(&vlc);

    return 0;
fail:
    FUNC3(&vlc);
    return AVERROR_INVALIDDATA;
}