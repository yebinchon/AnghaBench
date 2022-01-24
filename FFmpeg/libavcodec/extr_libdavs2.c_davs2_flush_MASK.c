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
struct TYPE_5__ {int /*<<< orphan*/  out_frame; int /*<<< orphan*/  decoder; int /*<<< orphan*/  headerset; } ;
typedef  TYPE_1__ DAVS2Context ;
typedef  TYPE_2__ AVCodecContext ;

/* Variables and functions */
 int /*<<< orphan*/  AV_LOG_WARNING ; 
 int DAVS2_ERROR ; 
 int DAVS2_GOT_FRAME ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(AVCodecContext *avctx)
{
    DAVS2Context *cad      = avctx->priv_data;
    int           ret      = DAVS2_GOT_FRAME;

    while (ret == DAVS2_GOT_FRAME) {
        ret = FUNC1(cad->decoder, &cad->headerset, &cad->out_frame);
        FUNC2(cad->decoder, &cad->out_frame);
    }

    if (ret == DAVS2_ERROR) {
        FUNC0(avctx, AV_LOG_WARNING, "Decoder flushing failed.\n");
    }
}