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
struct TYPE_9__ {int using_webp_anim_encoder; int wrote_webp_header; int /*<<< orphan*/  frame_count; int /*<<< orphan*/  last_pkt; } ;
typedef  TYPE_1__ WebpContext ;
struct TYPE_11__ {int /*<<< orphan*/  pb; TYPE_1__* priv_data; } ;
struct TYPE_10__ {int /*<<< orphan*/  pts; int /*<<< orphan*/  size; int /*<<< orphan*/  data; } ;
typedef  TYPE_2__ AVPacket ;
typedef  TYPE_3__ AVFormatContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_2__*) ; 

__attribute__((used)) static int FUNC4(AVFormatContext *s, AVPacket *pkt)
{
    WebpContext *w = s->priv_data;
    w->using_webp_anim_encoder |= FUNC3(pkt);

    if (w->using_webp_anim_encoder) {
        FUNC1(s->pb, pkt->data, pkt->size);
        w->wrote_webp_header = 1;  // for good measure
    } else {
        int ret;
        if ((ret = FUNC2(s, 0, pkt->pts)) < 0)
            return ret;
        FUNC0(&w->last_pkt, pkt);
    }
    ++w->frame_count;

    return 0;
}