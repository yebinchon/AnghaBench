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
struct TYPE_5__ {scalar_t__ fd_disp; scalar_t__ fd_fb; int /*<<< orphan*/  framebuffer_size; int /*<<< orphan*/  framebuffer_addr; } ;
typedef  TYPE_1__ sunxi_disp_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC4(sunxi_disp_t *ctx)
{
   if (ctx->fd_disp >= 0)
   {
      /* release layer */
      FUNC3(ctx);
      /* close descriptors */
      FUNC2(ctx->framebuffer_addr, ctx->framebuffer_size);
      FUNC0(ctx->fd_fb);
      FUNC0(ctx->fd_disp);
      ctx->fd_disp = -1;
      FUNC1(ctx);
   }
   return 0;
}