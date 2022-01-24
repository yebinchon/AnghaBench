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
struct TYPE_5__ {TYPE_1__* priv_data; } ;
struct TYPE_4__ {int /*<<< orphan*/  tmpl; int /*<<< orphan*/  last_frame; scalar_t__ buf_size; int /*<<< orphan*/  buf; int /*<<< orphan*/  lzw; } ;
typedef  TYPE_1__ GIFContext ;
typedef  TYPE_2__ AVCodecContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(AVCodecContext *avctx)
{
    GIFContext *s = avctx->priv_data;

    FUNC1(&s->lzw);
    FUNC1(&s->buf);
    s->buf_size = 0;
    FUNC0(&s->last_frame);
    FUNC1(&s->tmpl);
    return 0;
}