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
struct TYPE_3__ {int resize; int /*<<< orphan*/  egl; } ;
typedef  TYPE_1__ switch_ctx_data_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

void FUNC2(void *data)
{
    switch_ctx_data_t *ctx_nx = (switch_ctx_data_t *)data;

    if (ctx_nx)
    {
#ifdef HAVE_EGL
        egl_destroy(&ctx_nx->egl);
#endif
        ctx_nx->resize = false;
        FUNC1(ctx_nx);
    }
}