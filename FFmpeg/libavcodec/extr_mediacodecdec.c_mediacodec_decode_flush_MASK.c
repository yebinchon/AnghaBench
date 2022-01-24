#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_1__* priv_data; } ;
struct TYPE_5__ {int /*<<< orphan*/  ctx; int /*<<< orphan*/  buffered_pkt; } ;
typedef  TYPE_1__ MediaCodecH264DecContext ;
typedef  TYPE_2__ AVCodecContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(AVCodecContext *avctx)
{
    MediaCodecH264DecContext *s = avctx->priv_data;

    FUNC0(&s->buffered_pkt);

    FUNC1(avctx, s->ctx);
}