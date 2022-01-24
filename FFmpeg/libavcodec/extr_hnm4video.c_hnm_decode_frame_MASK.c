#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_4__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint16_t ;
struct TYPE_21__ {TYPE_1__* priv_data; } ;
struct TYPE_20__ {int key_frame; int /*<<< orphan*/ * data; int /*<<< orphan*/  pict_type; } ;
struct TYPE_19__ {int size; scalar_t__ data; } ;
struct TYPE_18__ {int width; int height; int version; int /*<<< orphan*/  palette; int /*<<< orphan*/  current; int /*<<< orphan*/  processed; int /*<<< orphan*/  previous; } ;
typedef  TYPE_1__ Hnm4VideoContext ;
typedef  TYPE_2__ AVPacket ;
typedef  TYPE_3__ AVFrame ;
typedef  TYPE_4__ AVCodecContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  AV_PICTURE_TYPE_I ; 
 int /*<<< orphan*/  AV_PICTURE_TYPE_P ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ HNM4_CHUNK_ID_IU ; 
 scalar_t__ HNM4_CHUNK_ID_IZ ; 
 scalar_t__ HNM4_CHUNK_ID_PL ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,TYPE_3__*) ; 
 int FUNC3 (TYPE_4__*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,scalar_t__,int) ; 
 int FUNC5 (TYPE_4__*,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__*,scalar_t__,int) ; 

__attribute__((used)) static int FUNC11(AVCodecContext *avctx, void *data,
                            int *got_frame, AVPacket *avpkt)
{
    AVFrame *frame = data;
    Hnm4VideoContext *hnm = avctx->priv_data;
    int ret;
    uint16_t chunk_id;

    if (avpkt->size < 8) {
        FUNC1(avctx, AV_LOG_ERROR, "packet too small\n");
        return AVERROR_INVALIDDATA;
    }

    chunk_id = FUNC0(avpkt->data + 4);

    if (chunk_id == HNM4_CHUNK_ID_PL) {
        FUNC7(avctx, avpkt->data, avpkt->size);
    } else if (chunk_id == HNM4_CHUNK_ID_IZ) {
        if (avpkt->size < 12) {
            FUNC1(avctx, AV_LOG_ERROR, "packet too small\n");
            return AVERROR_INVALIDDATA;
        }
        if ((ret = FUNC5(avctx, frame, 0)) < 0)
            return ret;

        FUNC10(avctx, avpkt->data + 12, avpkt->size - 12);
        FUNC8(hnm->previous, hnm->current, hnm->width * hnm->height);
        if (hnm->version == 0x4a)
            FUNC8(hnm->processed, hnm->current, hnm->width * hnm->height);
        else
            FUNC9(avctx);
        FUNC2(avctx, frame);
        frame->pict_type = AV_PICTURE_TYPE_I;
        frame->key_frame = 1;
        FUNC8(frame->data[1], hnm->palette, 256 * 4);
        *got_frame = 1;
    } else if (chunk_id == HNM4_CHUNK_ID_IU) {
        if ((ret = FUNC5(avctx, frame, 0)) < 0)
            return ret;

        if (hnm->version == 0x4a) {
            FUNC4(avctx, avpkt->data + 8, avpkt->size - 8);
            FUNC8(hnm->processed, hnm->current, hnm->width * hnm->height);
        } else {
            int ret = FUNC3(avctx, avpkt->data + 8, avpkt->size - 8);
            if (ret < 0)
                return ret;
            FUNC9(avctx);
        }
        FUNC2(avctx, frame);
        frame->pict_type = AV_PICTURE_TYPE_P;
        frame->key_frame = 0;
        FUNC8(frame->data[1], hnm->palette, 256 * 4);
        *got_frame = 1;
        FUNC6(hnm);
    } else {
        FUNC1(avctx, AV_LOG_ERROR, "invalid chunk id: %d\n", chunk_id);
        return AVERROR_INVALIDDATA;
    }

    return avpkt->size;
}