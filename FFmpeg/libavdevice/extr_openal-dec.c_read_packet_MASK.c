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
struct TYPE_9__ {int sample_step; int /*<<< orphan*/  device; } ;
typedef  TYPE_1__ al_data ;
struct TYPE_11__ {int flags; TYPE_1__* priv_data; } ;
struct TYPE_10__ {int size; scalar_t__ data; int /*<<< orphan*/  pts; } ;
typedef  TYPE_2__ AVPacket ;
typedef  TYPE_3__ AVFormatContext ;
typedef  int /*<<< orphan*/  ALCsizei ;
typedef  int ALCint ;

/* Variables and functions */
 int /*<<< orphan*/  ALC_CAPTURE_SAMPLES ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVFMT_FLAG_NONBLOCK ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  EAGAIN ; 
 int FUNC1 (int /*<<< orphan*/ ,char const**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int /*<<< orphan*/ ,char*,char const*) ; 
 int FUNC6 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 

__attribute__((used)) static int FUNC9(AVFormatContext* ctx, AVPacket *pkt)
{
    al_data *ad = ctx->priv_data;
    int error=0;
    const char *error_msg;
    ALCint nb_samples;

    for (;;) {
        /* Get number of samples available */
        FUNC3(ad->device, ALC_CAPTURE_SAMPLES, (ALCsizei) sizeof(ALCint), &nb_samples);
        if ((error = FUNC1(ad->device, &error_msg))) goto fail;
        if (nb_samples > 0)
            break;
        if (ctx->flags & AVFMT_FLAG_NONBLOCK)
            return FUNC0(EAGAIN);
        FUNC8(1000);
    }

    /* Create a packet of appropriate size */
    if ((error = FUNC6(pkt, nb_samples*ad->sample_step)) < 0)
        goto fail;
    pkt->pts = FUNC4();

    /* Fill the packet with the available samples */
    FUNC2(ad->device, pkt->data, nb_samples);
    if ((error = FUNC1(ad->device, &error_msg))) goto fail;

    return pkt->size;
fail:
    /* Handle failure */
    if (pkt->data)
        FUNC7(pkt);
    if (error_msg)
        FUNC5(ctx, AV_LOG_ERROR, "Error: %s\n", error_msg);
    return error;
}