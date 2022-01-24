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
struct TYPE_5__ {int /*<<< orphan*/  afq; scalar_t__ handle; } ;
struct TYPE_4__ {int /*<<< orphan*/  extradata; TYPE_2__* priv_data; } ;
typedef  TYPE_1__ AVCodecContext ;
typedef  TYPE_2__ AACContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(AVCodecContext *avctx)
{
    AACContext *s = avctx->priv_data;

    if (s->handle)
        FUNC0(&s->handle);
    FUNC1(&avctx->extradata);
    FUNC2(&s->afq);

    return 0;
}