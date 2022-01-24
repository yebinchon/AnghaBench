#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_13__ {int len; int /*<<< orphan*/  dts; int /*<<< orphan*/  pts; int /*<<< orphan*/ * data; } ;
struct TYPE_12__ {TYPE_1__* priv_data; } ;
struct TYPE_11__ {int size; int /*<<< orphan*/  dts; int /*<<< orphan*/  pts; int /*<<< orphan*/ * data; } ;
struct TYPE_10__ {int /*<<< orphan*/  out_frame; int /*<<< orphan*/  decoder; int /*<<< orphan*/  headerset; TYPE_6__ packet; } ;
typedef  TYPE_1__ DAVS2Context ;
typedef  TYPE_2__ AVPacket ;
typedef  int /*<<< orphan*/  AVFrame ;
typedef  TYPE_3__ AVCodecContext ;

/* Variables and functions */
 int AVERROR_EXTERNAL ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int DAVS2_DEFAULT ; 
 int DAVS2_ERROR ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,TYPE_6__*) ; 
 int FUNC4 (TYPE_3__*,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int FUNC5 (TYPE_3__*,int /*<<< orphan*/ *,int*) ; 

__attribute__((used)) static int FUNC6(AVCodecContext *avctx, void *data,
                              int *got_frame, AVPacket *avpkt)
{
    DAVS2Context *cad      = avctx->priv_data;
    int           buf_size = avpkt->size;
    uint8_t      *buf_ptr  = avpkt->data;
    AVFrame      *frame    = data;
    int           ret      = DAVS2_DEFAULT;

    /* end of stream, output what is still in the buffers */
    if (!buf_size) {
        return FUNC5(avctx, frame, got_frame);
    }

    cad->packet.data = buf_ptr;
    cad->packet.len  = buf_size;
    cad->packet.pts  = avpkt->pts;
    cad->packet.dts  = avpkt->dts;

    ret = FUNC3(cad->decoder, &cad->packet);


    if (ret == DAVS2_ERROR) {
        FUNC0(avctx, AV_LOG_ERROR, "Decoder error: can't read packet\n");
        return AVERROR_EXTERNAL;
    }

    ret = FUNC2(cad->decoder, &cad->headerset, &cad->out_frame);

    if (ret != DAVS2_DEFAULT) {
        ret = FUNC4(avctx, &cad->out_frame, got_frame, &cad->headerset, ret, frame);
        FUNC1(cad->decoder, &cad->out_frame);
    }

    return ret == 0 ? buf_size : ret;
}