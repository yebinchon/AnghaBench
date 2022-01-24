#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {struct TYPE_5__* rc_override; struct TYPE_5__* inter_matrix; struct TYPE_5__* intra_matrix; struct TYPE_5__* subtitle_header; struct TYPE_5__* extradata; } ;
typedef  TYPE_1__ AVCodecContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

void FUNC2(AVCodecContext **pavctx)
{
    AVCodecContext *avctx = *pavctx;

    if (!avctx)
        return;

    FUNC1(avctx);

    FUNC0(&avctx->extradata);
    FUNC0(&avctx->subtitle_header);
    FUNC0(&avctx->intra_matrix);
    FUNC0(&avctx->inter_matrix);
    FUNC0(&avctx->rc_override);

    FUNC0(pavctx);
}