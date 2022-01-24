#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint32_t ;
typedef  int uint16_t ;
struct TYPE_6__ {TYPE_1__* priv_data; } ;
struct TYPE_5__ {char* buf; scalar_t__ max_payload_size; } ;
typedef  TYPE_1__ RTPMuxContext ;
typedef  int /*<<< orphan*/  GetBitContext ;
typedef  TYPE_2__ AVFormatContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 scalar_t__ DIRAC_PIC_NR_SIZE ; 
 int /*<<< orphan*/  DIRAC_RTP_PCODE_HQ_PIC_FRAGMENT ; 
 int FUNC3 (scalar_t__,int) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/  const*,int,int,int,int) ; 

__attribute__((used)) static void FUNC8(AVFormatContext *ctx, const uint8_t *buf, int size, int interlaced)
{
    RTPMuxContext *rtp_ctx = ctx->priv_data;
    GetBitContext gc;
    int lvl, second_field;
    uint32_t pic_nr, wavelet_depth, prefix_bytes, size_scaler;
    uint16_t frag_len;
    char *info_hdr = &rtp_ctx->buf[4];

    pic_nr = FUNC0(&buf[0]);
    buf += DIRAC_PIC_NR_SIZE;
    size -= DIRAC_PIC_NR_SIZE;
    second_field = interlaced && (pic_nr & 0x01);

    FUNC6(&gc, buf, 8  * size);
                    FUNC5(&gc); /* wavelet_idx */
    wavelet_depth = FUNC5(&gc);
                    FUNC5(&gc); /* num_x */
                    FUNC5(&gc); /* num_y */
    prefix_bytes  = FUNC5(&gc);
    size_scaler   = FUNC5(&gc);
    /* pass the quantization matrices */
    FUNC5(&gc);
    for(lvl = 0; lvl < wavelet_depth; lvl++)
    {
        FUNC5(&gc);
        FUNC5(&gc);
        FUNC5(&gc);
    }

    frag_len = (FUNC4(&gc) + 7) / 8; /* length of transform parameters */

    FUNC2(&info_hdr[ 0], pic_nr);
    FUNC1(&info_hdr[ 4], prefix_bytes);
    FUNC1(&info_hdr[ 6], size_scaler);
    FUNC1(&info_hdr[ 8], frag_len);
    FUNC1(&info_hdr[10], 0 /* nr. of slices */);
    FUNC7(ctx, DIRAC_RTP_PCODE_HQ_PIC_FRAGMENT, 12, buf, frag_len, interlaced, second_field, 0);
    buf += frag_len;
    size -= frag_len;

    while (size > 0) {
        frag_len = FUNC3(rtp_ctx->max_payload_size - 20 /* pl header */, size);
        FUNC1(&info_hdr[ 8], frag_len);
        FUNC1(&info_hdr[10], 1 /* nr. of slices */);
        FUNC1(&info_hdr[12], 0 /* slice x */);
        FUNC1(&info_hdr[14], 0 /* slice y */);

        size -= frag_len;
        FUNC7(ctx, DIRAC_RTP_PCODE_HQ_PIC_FRAGMENT, 16, buf, frag_len, interlaced, second_field, size > 0 ? 0 : 1);
        buf += frag_len;
    }
}