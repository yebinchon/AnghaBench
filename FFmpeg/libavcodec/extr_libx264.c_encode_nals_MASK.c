#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int i_payload; int /*<<< orphan*/  p_payload; } ;
typedef  TYPE_1__ x264_nal_t ;
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_12__ {int sei_size; int /*<<< orphan*/  sei; } ;
typedef  TYPE_2__ X264Context ;
struct TYPE_14__ {TYPE_2__* priv_data; } ;
struct TYPE_13__ {int /*<<< orphan*/ * data; } ;
typedef  TYPE_3__ AVPacket ;
typedef  TYPE_4__ AVCodecContext ;

/* Variables and functions */
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (TYPE_4__*,TYPE_3__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(AVCodecContext *ctx, AVPacket *pkt,
                       const x264_nal_t *nals, int nnal)
{
    X264Context *x4 = ctx->priv_data;
    uint8_t *p;
    int i, size = x4->sei_size, ret;

    if (!nnal)
        return 0;

    for (i = 0; i < nnal; i++)
        size += nals[i].i_payload;

    if ((ret = FUNC2(ctx, pkt, size, 0)) < 0)
        return ret;

    p = pkt->data;

    /* Write the SEI as part of the first frame. */
    if (x4->sei_size > 0 && nnal > 0) {
        if (x4->sei_size > size) {
            FUNC1(ctx, AV_LOG_ERROR, "Error: nal buffer is too small\n");
            return -1;
        }
        FUNC3(p, x4->sei, x4->sei_size);
        p += x4->sei_size;
        x4->sei_size = 0;
        FUNC0(&x4->sei);
    }

    for (i = 0; i < nnal; i++){
        FUNC3(p, nals[i].p_payload, nals[i].i_payload);
        p += nals[i].i_payload;
    }

    return 1;
}