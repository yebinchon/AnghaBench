#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_14__ {int prefix_bytes; int wavelet_depth; int size_scaler; TYPE_1__* plane; scalar_t__** quant; } ;
typedef  TYPE_2__ VC2EncContext ;
struct TYPE_16__ {int* buf; } ;
struct TYPE_15__ {int x; int y; int quant_idx; int bytes; TYPE_4__ pb; TYPE_2__* ctx; } ;
struct TYPE_13__ {int /*<<< orphan*/ ** band; } ;
typedef  TYPE_3__ SliceArgs ;
typedef  TYPE_4__ PutBitContext ;
typedef  int /*<<< orphan*/  AVCodecContext ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int MAX_DWT_LEVELS ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,TYPE_4__*,int const,int const,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,int,int const) ; 
 int FUNC7 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__*,int) ; 

__attribute__((used)) static int FUNC10(AVCodecContext *avctx, void *arg)
{
    SliceArgs *slice_dat = arg;
    VC2EncContext *s = slice_dat->ctx;
    PutBitContext *pb = &slice_dat->pb;
    const int slice_x = slice_dat->x;
    const int slice_y = slice_dat->y;
    const int quant_idx = slice_dat->quant_idx;
    const int slice_bytes_max = slice_dat->bytes;
    uint8_t quants[MAX_DWT_LEVELS][4];
    int p, level, orientation;

    /* The reference decoder ignores it, and its typical length is 0 */
    FUNC5(FUNC8(pb), 0, s->prefix_bytes);
    FUNC9(pb, s->prefix_bytes);

    FUNC6(pb, 8, quant_idx);

    /* Slice quantization (slice_quantizers() in the specs) */
    for (level = 0; level < s->wavelet_depth; level++)
        for (orientation = !!level; orientation < 4; orientation++)
            quants[level][orientation] = FUNC1(quant_idx - s->quant[level][orientation], 0);

    /* Luma + 2 Chroma planes */
    for (p = 0; p < 3; p++) {
        int bytes_start, bytes_len, pad_s, pad_c;
        bytes_start = FUNC7(pb) >> 3;
        FUNC6(pb, 8, 0);
        for (level = 0; level < s->wavelet_depth; level++) {
            for (orientation = !!level; orientation < 4; orientation++) {
                FUNC3(s, pb, slice_x, slice_y,
                               &s->plane[p].band[level][orientation],
                               quants[level][orientation]);
            }
        }
        FUNC2(pb);
        bytes_len = (FUNC7(pb) >> 3) - bytes_start - 1;
        if (p == 2) {
            int len_diff = slice_bytes_max - (FUNC7(pb) >> 3);
            pad_s = FUNC0((bytes_len + len_diff), s->size_scaler)/s->size_scaler;
            pad_c = (pad_s*s->size_scaler) - bytes_len;
        } else {
            pad_s = FUNC0(bytes_len, s->size_scaler)/s->size_scaler;
            pad_c = (pad_s*s->size_scaler) - bytes_len;
        }
        pb->buf[bytes_start] = pad_s;
        FUNC4(pb);
        /* vc2-reference uses that padding that decodes to '0' coeffs */
        FUNC5(FUNC8(pb), 0xFF, pad_c);
        FUNC9(pb, pad_c);
    }

    return 0;
}