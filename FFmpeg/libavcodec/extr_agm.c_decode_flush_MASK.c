#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  prev_frame; } ;
struct TYPE_4__ {TYPE_2__* priv_data; } ;
typedef  TYPE_1__ AVCodecContext ;
typedef  TYPE_2__ AGMContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(AVCodecContext *avctx)
{
    AGMContext *s = avctx->priv_data;

    FUNC0(s->prev_frame);
}