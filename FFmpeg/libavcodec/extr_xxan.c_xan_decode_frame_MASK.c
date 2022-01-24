#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  pic; int /*<<< orphan*/  gb; } ;
typedef  TYPE_1__ XanContext ;
struct TYPE_12__ {TYPE_1__* priv_data; } ;
struct TYPE_11__ {int size; int /*<<< orphan*/  data; } ;
typedef  TYPE_2__ AVPacket ;
typedef  TYPE_3__ AVCodecContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int FUNC0 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ ,char*,int) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (TYPE_3__*) ; 
 int FUNC6 (TYPE_3__*) ; 

__attribute__((used)) static int FUNC7(AVCodecContext *avctx,
                            void *data, int *got_frame,
                            AVPacket *avpkt)
{
    XanContext *s = avctx->priv_data;
    int ftype;
    int ret;

    if ((ret = FUNC4(avctx, s->pic, 0)) < 0)
        return ret;

    FUNC3(&s->gb, avpkt->data, avpkt->size);
    ftype = FUNC2(&s->gb);
    switch (ftype) {
    case 0:
        ret = FUNC5(avctx);
        break;
    case 1:
        ret = FUNC6(avctx);
        break;
    default:
        FUNC1(avctx, AV_LOG_ERROR, "Unknown frame type %d\n", ftype);
        return AVERROR_INVALIDDATA;
    }
    if (ret)
        return ret;

    if ((ret = FUNC0(data, s->pic)) < 0)
        return ret;

    *got_frame = 1;

    return avpkt->size;
}