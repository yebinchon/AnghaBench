#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ initialized; int /*<<< orphan*/  orig_pix_fmt; } ;
typedef  TYPE_1__ QSVContext ;
typedef  int /*<<< orphan*/  AVCodecContext ;

/* Variables and functions */
 int /*<<< orphan*/  AV_PIX_FMT_NONE ; 

void FUNC0(AVCodecContext *avctx, QSVContext *q)
{
    q->orig_pix_fmt = AV_PIX_FMT_NONE;
    q->initialized = 0;
}