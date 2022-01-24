#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_19__ {int num_aac_frames; int /*<<< orphan*/  chan_config; int /*<<< orphan*/  sampling_index; int /*<<< orphan*/  object_type; int /*<<< orphan*/  crc_absent; } ;
struct TYPE_18__ {int first_frame_done; } ;
struct TYPE_17__ {TYPE_1__* par_in; TYPE_4__* priv_data; } ;
struct TYPE_16__ {int size; int data; } ;
struct TYPE_15__ {scalar_t__ extradata; } ;
typedef  int /*<<< orphan*/  PutBitContext ;
typedef  int /*<<< orphan*/  GetBitContext ;
typedef  TYPE_2__ AVPacket ;
typedef  TYPE_3__ AVBSFContext ;
typedef  TYPE_4__ AACBSFContext ;
typedef  TYPE_5__ AACADTSHeaderInfo ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_INVALIDDATA ; 
 int AVERROR_PATCHWELCOME ; 
 int AV_AAC_ADTS_HEADER_SIZE ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  AV_PKT_DATA_NEW_EXTRADATA ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  ENOMEM ; 
 int MAX_PCE_SIZE ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,char*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,TYPE_5__*) ; 
 int FUNC7 (TYPE_3__*,TYPE_2__*) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ *,int) ; 
 int FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC16(AVBSFContext *bsfc, AVPacket *pkt)
{
    AACBSFContext *ctx = bsfc->priv_data;

    GetBitContext gb;
    PutBitContext pb;
    AACADTSHeaderInfo hdr;
    int ret;

    ret = FUNC7(bsfc, pkt);
    if (ret < 0)
        return ret;

    if (bsfc->par_in->extradata && pkt->size >= 2 && (FUNC1(pkt->data) >> 4) != 0xfff)
        return 0;

    if (pkt->size < AV_AAC_ADTS_HEADER_SIZE)
        goto packet_too_small;

    FUNC12(&gb, pkt->data, AV_AAC_ADTS_HEADER_SIZE * 8);

    if (FUNC6(&gb, &hdr) < 0) {
        FUNC2(bsfc, AV_LOG_ERROR, "Error parsing ADTS frame header!\n");
        ret = AVERROR_INVALIDDATA;
        goto fail;
    }

    if (!hdr.crc_absent && hdr.num_aac_frames > 1) {
        FUNC5(bsfc,
                                      "Multiple RDBs per frame with CRC");
        ret = AVERROR_PATCHWELCOME;
        goto fail;
    }

    pkt->size -= AV_AAC_ADTS_HEADER_SIZE + 2 * !hdr.crc_absent;
    if (pkt->size <= 0)
        goto packet_too_small;
    pkt->data += AV_AAC_ADTS_HEADER_SIZE + 2 * !hdr.crc_absent;

    if (!ctx->first_frame_done) {
        int            pce_size = 0;
        uint8_t        pce_data[MAX_PCE_SIZE];
        uint8_t       *extradata;

        if (!hdr.chan_config) {
            FUNC12(&gb, pkt->data, pkt->size * 8);
            if (FUNC10(&gb, 3) != 5) {
                FUNC5(bsfc,
                                              "PCE-based channel configuration "
                                              "without PCE as first syntax "
                                              "element");
                ret = AVERROR_PATCHWELCOME;
                goto fail;
            }
            FUNC13(&pb, pce_data, MAX_PCE_SIZE);
            pce_size = FUNC8(&pb, &gb) / 8;
            FUNC9(&pb);
            pkt->size -= FUNC11(&gb)/8;
            pkt->data += FUNC11(&gb)/8;
        }

        extradata = FUNC3(pkt, AV_PKT_DATA_NEW_EXTRADATA,
                                            2 + pce_size);
        if (!extradata) {
            ret = FUNC0(ENOMEM);
            goto fail;
        }

        FUNC13(&pb, extradata, 2 + pce_size);
        FUNC15(&pb, 5, hdr.object_type);
        FUNC15(&pb, 4, hdr.sampling_index);
        FUNC15(&pb, 4, hdr.chan_config);
        FUNC15(&pb, 1, 0); //frame length - 1024 samples
        FUNC15(&pb, 1, 0); //does not depend on core coder
        FUNC15(&pb, 1, 0); //is not extension
        FUNC9(&pb);
        if (pce_size) {
            FUNC14(extradata + 2, pce_data, pce_size);
        }

        ctx->first_frame_done = 1;
    }

    return 0;

packet_too_small:
    FUNC2(bsfc, AV_LOG_ERROR, "Input packet too small\n");
    ret = AVERROR_INVALIDDATA;
fail:
    FUNC4(pkt);
    return ret;
}