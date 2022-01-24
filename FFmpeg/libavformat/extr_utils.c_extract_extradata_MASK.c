#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_10__ {TYPE_3__* internal; } ;
struct TYPE_7__ {int /*<<< orphan*/  bsf; int /*<<< orphan*/ * pkt; scalar_t__ inited; } ;
struct TYPE_9__ {TYPE_2__* avctx; TYPE_1__ extract_extradata; } ;
struct TYPE_8__ {int extradata_size; scalar_t__ extradata; } ;
typedef  TYPE_3__ AVStreamInternal ;
typedef  TYPE_4__ AVStream ;
typedef  int /*<<< orphan*/  AVPacket ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_EOF ; 
 scalar_t__ AV_INPUT_BUFFER_PADDING_SIZE ; 
 int /*<<< orphan*/  AV_PKT_DATA_NEW_EXTRADATA ; 
 int /*<<< orphan*/  EAGAIN ; 
 int /*<<< orphan*/  ENOMEM ; 
 unsigned int FF_MAX_EXTRADATA_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC10(AVStream *st, const AVPacket *pkt)
{
    AVStreamInternal *sti = st->internal;
    AVPacket *pkt_ref;
    int ret;

    if (!sti->extract_extradata.inited) {
        ret = FUNC8(st);
        if (ret < 0)
            return ret;
    }

    if (sti->extract_extradata.inited && !sti->extract_extradata.bsf)
        return 0;

    pkt_ref = sti->extract_extradata.pkt;
    ret = FUNC6(pkt_ref, pkt);
    if (ret < 0)
        return ret;

    ret = FUNC3(sti->extract_extradata.bsf, pkt_ref);
    if (ret < 0) {
        FUNC7(pkt_ref);
        return ret;
    }

    while (ret >= 0 && !sti->avctx->extradata) {
        int extradata_size;
        uint8_t *extradata;

        ret = FUNC2(sti->extract_extradata.bsf, pkt_ref);
        if (ret < 0) {
            if (ret != FUNC0(EAGAIN) && ret != AVERROR_EOF)
                return ret;
            continue;
        }

        extradata = FUNC5(pkt_ref, AV_PKT_DATA_NEW_EXTRADATA,
                                            &extradata_size);

        if (extradata) {
            FUNC1(!sti->avctx->extradata);
            if ((unsigned)extradata_size < FF_MAX_EXTRADATA_SIZE)
                sti->avctx->extradata = FUNC4(extradata_size + AV_INPUT_BUFFER_PADDING_SIZE);
            if (!sti->avctx->extradata) {
                FUNC7(pkt_ref);
                return FUNC0(ENOMEM);
            }
            FUNC9(sti->avctx->extradata, extradata, extradata_size);
            sti->avctx->extradata_size = extradata_size;
        }
        FUNC7(pkt_ref);
    }

    return 0;
}