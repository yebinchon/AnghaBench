#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {void* frame; } ;
struct TYPE_6__ {TYPE_1__* priv; } ;
struct TYPE_5__ {void* tmp_frame; TYPE_4__* stages; } ;
typedef  TYPE_1__ NPPTransposeContext ;
typedef  TYPE_2__ AVFilterContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOMEM ; 
 int FUNC1 (TYPE_4__*) ; 
 void* FUNC2 () ; 

__attribute__((used)) static int FUNC3(AVFilterContext *ctx)
{
    NPPTransposeContext *s = ctx->priv;
    int i;

    for (i = 0; i < FUNC1(s->stages); i++) {
        s->stages[i].frame = FUNC2();
        if (!s->stages[i].frame)
            return FUNC0(ENOMEM);
    }

    s->tmp_frame = FUNC2();
    if (!s->tmp_frame)
        return FUNC0(ENOMEM);

    return 0;
}