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
struct TYPE_3__ {scalar_t__ wnd; scalar_t__ cmap; int /*<<< orphan*/ * dpy; int /*<<< orphan*/ * vi; int /*<<< orphan*/ * ctx; } ;
typedef  TYPE_1__ GLContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void FUNC5 (GLContext* ctx)
{
  if (NULL != ctx->dpy && NULL != ctx->ctx) FUNC4(ctx->dpy, ctx->ctx);
  if (NULL != ctx->dpy && 0 != ctx->wnd) FUNC1(ctx->dpy, ctx->wnd);
  if (NULL != ctx->dpy && 0 != ctx->cmap) FUNC3(ctx->dpy, ctx->cmap);
  if (NULL != ctx->vi) FUNC2(ctx->vi);
  if (NULL != ctx->dpy) FUNC0(ctx->dpy);
}