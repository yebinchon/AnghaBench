#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  int16_t ;
struct TYPE_11__ {int /*<<< orphan*/ * priv_data; } ;
struct TYPE_10__ {int nb_samples; scalar_t__* data; } ;
struct TYPE_9__ {int size; int /*<<< orphan*/ * data; } ;
typedef  int /*<<< orphan*/  TSContext ;
typedef  TYPE_1__ AVPacket ;
typedef  TYPE_2__ AVFrame ;
typedef  TYPE_3__ AVCodecContext ;

/* Variables and functions */
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 (TYPE_3__*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC11(AVCodecContext *avctx, void *data,
                                   int *got_frame_ptr, AVPacket *avpkt)
{
    AVFrame *frame     = data;
    const uint8_t *buf = avpkt->data;
    int buf_size = avpkt->size;
    TSContext *c = avctx->priv_data;

    int i, j;
    int16_t *samples;
    int iterations, ret;

    iterations = buf_size / 32;

    if (!iterations) {
        FUNC0(avctx, AV_LOG_ERROR,
               "Too small input buffer (%d bytes), need at least 32 bytes\n", buf_size);
        return -1;
    }

    /* get output buffer */
    frame->nb_samples = iterations * 240;
    if ((ret = FUNC1(avctx, frame, 0)) < 0)
        return ret;
    samples = (int16_t *)frame->data[0];

    FUNC2(samples, 0, iterations * 240 * sizeof(*samples));

    for(j = 0; j < iterations; j++) {
        FUNC7(c, buf);
        buf += 32;

        FUNC4(c);
        FUNC5(c);

        for(i = 0; i < 4; i++) {
            FUNC3(c, i);
            FUNC6  (c, samples, i);
            FUNC10(c, samples, i);
            FUNC9         (c, samples, i);
            samples += 60;
        }

        FUNC8(c);
    }

    *got_frame_ptr = 1;

    return buf_size;
}