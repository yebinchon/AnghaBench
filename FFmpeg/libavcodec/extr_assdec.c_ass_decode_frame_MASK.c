#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  ass; int /*<<< orphan*/  type; } ;
struct TYPE_7__ {scalar_t__ size; int /*<<< orphan*/  data; } ;
struct TYPE_6__ {int num_rects; TYPE_3__** rects; } ;
typedef  TYPE_1__ AVSubtitle ;
typedef  TYPE_2__ AVPacket ;
typedef  int /*<<< orphan*/  AVCodecContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  SUBTITLE_ASS ; 
 TYPE_3__** FUNC1 (int) ; 
 TYPE_3__* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(AVCodecContext *avctx, void *data, int *got_sub_ptr,
                            AVPacket *avpkt)
{
    AVSubtitle *sub = data;

    if (avpkt->size <= 0)
        return avpkt->size;

    sub->rects = FUNC1(sizeof(*sub->rects));
    if (!sub->rects)
        return FUNC0(ENOMEM);
    sub->rects[0] = FUNC2(sizeof(*sub->rects[0]));
    if (!sub->rects[0])
        return FUNC0(ENOMEM);
    sub->num_rects = 1;
    sub->rects[0]->type = SUBTITLE_ASS;
    sub->rects[0]->ass  = FUNC3(avpkt->data);
    if (!sub->rects[0]->ass)
        return FUNC0(ENOMEM);
    *got_sub_ptr = 1;
    return avpkt->size;
}