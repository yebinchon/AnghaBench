#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_8__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  int uint16_t ;
struct TYPE_17__ {int num_substreams; } ;
struct TYPE_13__ {TYPE_8__ hdr; } ;
typedef  TYPE_1__ TrueHDCoreContext ;
struct TYPE_16__ {TYPE_1__* priv_data; } ;
struct TYPE_15__ {int size; int* data; } ;
struct TYPE_14__ {int* bits; int offset; int optional; } ;
typedef  int /*<<< orphan*/  GetBitContext ;
typedef  TYPE_2__ AccessUnit ;
typedef  TYPE_3__ AVPacket ;
typedef  TYPE_4__ AVBSFContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int FUNC0 (int*) ; 
 int /*<<< orphan*/  FUNC1 (int*,int) ; 
 int /*<<< orphan*/  FUNC2 (int*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int,int) ; 
 int MAX_SUBSTREAMS ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 int FUNC7 (TYPE_4__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (int*,int) ; 
 int FUNC9 (TYPE_4__*,TYPE_8__*,int /*<<< orphan*/ *) ; 
 void* FUNC10 (int /*<<< orphan*/ *,int) ; 
 int FUNC11 (int /*<<< orphan*/ *) ; 
 int FUNC12 (int /*<<< orphan*/ *) ; 
 int FUNC13 (int /*<<< orphan*/ *,int*,int) ; 
 int /*<<< orphan*/  FUNC14 (int*,int*,int) ; 
 int FUNC15 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC16(AVBSFContext *ctx, AVPacket *pkt)
{
    TrueHDCoreContext *s = ctx->priv_data;
    GetBitContext gbc;
    AccessUnit units[MAX_SUBSTREAMS];
    int ret, i, last_offset = 0;
    int in_size, out_size;
    int have_header = 0;
    int substream_bytes = 0;
    int end;

    ret = FUNC7(ctx, pkt);
    if (ret < 0)
        return ret;

    if (pkt->size < 4) {
        ret = AVERROR_INVALIDDATA;
        goto fail;
    }

    in_size = (FUNC0(pkt->data) & 0xFFF) * 2;
    if (in_size < 4 || in_size > pkt->size) {
        ret = AVERROR_INVALIDDATA;
        goto fail;
    }

    ret = FUNC13(&gbc, pkt->data + 4, pkt->size - 4);
    if (ret < 0)
        goto fail;

    if (FUNC15(&gbc, 32) == 0xf8726fba) {
        if ((ret = FUNC9(ctx, &s->hdr, &gbc)) < 0)
            goto fail;
        have_header = 1;
    }

    if (s->hdr.num_substreams > MAX_SUBSTREAMS) {
        ret = AVERROR_INVALIDDATA;
        goto fail;
    }

    for (i = 0; i < s->hdr.num_substreams; i++) {
        for (int j = 0; j < 4; j++)
            units[i].bits[j] = FUNC11(&gbc);

        units[i].offset = FUNC10(&gbc, 12);
        if (i < 3) {
            last_offset = units[i].offset * 2;
            substream_bytes += 2;
        }

        if (units[i].bits[0]) {
            units[i].optional = FUNC10(&gbc, 16);
            if (i < 3)
                substream_bytes += 2;
        }
    }
    end = FUNC12(&gbc) >> 3;

    out_size = end + 4 + last_offset;
    if (out_size < in_size) {
        int bpos = 0, reduce = end - have_header * 28 - substream_bytes;
        uint16_t parity_nibble, dts = FUNC0(pkt->data + 2);
        uint16_t auheader;
        uint8_t header[28];

        FUNC4(reduce >= 0 && reduce % 2 == 0);

        if (have_header) {
            FUNC14(header, pkt->data + 4, 28);
            header[16]  = (header[16] & 0x0c) | (FUNC3(s->hdr.num_substreams, 3) << 4);
            header[17] &= 0x7f;
            header[25] &= 0xfe;
            FUNC2(header + 26, FUNC8(header, 26));
        }

        pkt->data += reduce;
        out_size  -= reduce;
        pkt->size  = out_size;

        ret = FUNC5(pkt);
        if (ret < 0)
            goto fail;

        FUNC1(pkt->data + 2, dts);
        parity_nibble = dts;
        parity_nibble ^= out_size / 2;

        for (i = 0; i < FUNC3(s->hdr.num_substreams, 3); i++) {
            uint16_t substr_hdr = 0;

            substr_hdr |= (units[i].bits[0] << 15);
            substr_hdr |= (units[i].bits[1] << 14);
            substr_hdr |= (units[i].bits[2] << 13);
            substr_hdr |= (units[i].bits[3] << 12);
            substr_hdr |=  units[i].offset;

            FUNC1(pkt->data + have_header * 28 + 4 + bpos, substr_hdr);

            parity_nibble ^= substr_hdr;
            bpos          += 2;

            if (units[i].bits[0]) {
                FUNC1(pkt->data + have_header * 28 + 4 + bpos, units[i].optional);

                parity_nibble ^= units[i].optional;
                bpos          += 2;
            }
        }

        parity_nibble ^= parity_nibble >> 8;
        parity_nibble ^= parity_nibble >> 4;
        parity_nibble &= 0xF;

        auheader  = (parity_nibble ^ 0xF) << 12;
        auheader |= (out_size / 2) & 0x0fff;
        FUNC1(pkt->data, auheader);

        if (have_header)
            FUNC14(pkt->data + 4, header, 28);
    }

fail:
    if (ret < 0)
        FUNC6(pkt);

    return ret;
}