#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_7__ {TYPE_1__* priv_data; } ;
struct TYPE_6__ {scalar_t__ compute_edt; } ;
typedef  TYPE_1__ DVBSubContext ;
typedef  int /*<<< orphan*/  AVSubtitle ;
typedef  TYPE_2__ AVCodecContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ *,int*) ; 

__attribute__((used)) static int FUNC2(AVCodecContext *avctx, const uint8_t *buf,
                                      int buf_size, AVSubtitle *sub,int *got_output)
{
    DVBSubContext *ctx = avctx->priv_data;

    if(ctx->compute_edt == 0)
        FUNC1(avctx, sub, got_output);
#ifdef DEBUG
    save_display_set(ctx);
#endif
    return 0;
}