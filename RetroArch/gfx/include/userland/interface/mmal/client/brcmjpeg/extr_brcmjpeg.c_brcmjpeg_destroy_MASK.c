#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  sema; int /*<<< orphan*/  process_lock; int /*<<< orphan*/  lock; scalar_t__ mmal; } ;
typedef  TYPE_1__ BRCMJPEG_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(BRCMJPEG_T *ctx)
{
   if (ctx->mmal)
      FUNC1(ctx->mmal);
   FUNC2(&ctx->lock);
   FUNC2(&ctx->process_lock);
   FUNC3(&ctx->sema);
   FUNC0(ctx);
}