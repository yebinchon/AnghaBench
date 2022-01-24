#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_28__   TYPE_5__ ;
typedef  struct TYPE_27__   TYPE_4__ ;
typedef  struct TYPE_26__   TYPE_3__ ;
typedef  struct TYPE_25__   TYPE_2__ ;
typedef  struct TYPE_24__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int32_t ;
struct TYPE_28__ {TYPE_2__* priv_data; } ;
struct TYPE_27__ {int /*<<< orphan*/  nb_samples; int /*<<< orphan*/  pts; scalar_t__* data; } ;
struct TYPE_26__ {int size; int /*<<< orphan*/  duration; int /*<<< orphan*/  pts; int /*<<< orphan*/  data; } ;
struct TYPE_24__ {scalar_t__ adpcm_mode; } ;
struct TYPE_25__ {int frame_size; int /*<<< orphan*/  pb; TYPE_1__ options; scalar_t__ lfe_channel; } ;
typedef  TYPE_2__ DCAEncContext ;
typedef  TYPE_3__ AVPacket ;
typedef  TYPE_4__ AVFrame ;
typedef  TYPE_5__ AVCodecContext ;

/* Variables and functions */
 int SUBFRAMES ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/  const*) ; 
 int FUNC4 (TYPE_5__*,TYPE_3__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_2__*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_2__*,int /*<<< orphan*/  const*) ; 

__attribute__((used)) static int FUNC18(AVCodecContext *avctx, AVPacket *avpkt,
                        const AVFrame *frame, int *got_packet_ptr)
{
    DCAEncContext *c = avctx->priv_data;
    const int32_t *samples;
    int ret, i;

    if ((ret = FUNC4(avctx, avpkt, c->frame_size, 0)) < 0)
        return ret;

    samples = (const int32_t *)frame->data[0];

    FUNC17(c, samples);
    if (c->lfe_channel)
        FUNC10(c, samples);

    FUNC3(c, samples);
    if (c->options.adpcm_mode)
        FUNC0(c);
    FUNC7(c);
    FUNC1(c);
    FUNC2(c);
    FUNC16(c, samples);

    FUNC9(&c->pb, avpkt->data, avpkt->size);
    FUNC6(c);
    FUNC13(c);
    FUNC14(c);
    for (i = 0; i < SUBFRAMES; i++)
        FUNC15(c, i);


    for (i = FUNC12(&c->pb); i < 8*c->frame_size; i++)
        FUNC11(&c->pb, 1, 0);

    FUNC8(&c->pb);

    avpkt->pts      = frame->pts;
    avpkt->duration = FUNC5(avctx, frame->nb_samples);
    avpkt->size     = FUNC12(&c->pb) >> 3;
    *got_packet_ptr = 1;
    return 0;
}