#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {TYPE_1__* priv_data; } ;
struct TYPE_8__ {int size; int /*<<< orphan*/  data; } ;
struct TYPE_7__ {int /*<<< orphan*/  frame; int /*<<< orphan*/  gb; } ;
typedef  TYPE_1__ RpzaContext ;
typedef  TYPE_2__ AVPacket ;
typedef  TYPE_3__ AVCodecContext ;

/* Variables and functions */
 int FUNC0 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC3(AVCodecContext *avctx,
                             void *data, int *got_frame,
                             AVPacket *avpkt)
{
    RpzaContext *s = avctx->priv_data;
    int ret;

    FUNC1(&s->gb, avpkt->data, avpkt->size);

    ret = FUNC2(s);
    if (ret < 0)
        return ret;

    if ((ret = FUNC0(data, s->frame)) < 0)
        return ret;

    *got_frame      = 1;

    /* always report that the buffer was completely consumed */
    return avpkt->size;
}