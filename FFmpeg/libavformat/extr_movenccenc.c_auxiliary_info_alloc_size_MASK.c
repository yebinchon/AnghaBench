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
struct TYPE_3__ {int auxiliary_info_size; int auxiliary_info_alloc_size; int /*<<< orphan*/  auxiliary_info; } ;
typedef  TYPE_1__ MOVMuxCencContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOMEM ; 
 size_t FUNC1 (int,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,size_t) ; 

__attribute__((used)) static int FUNC3(MOVMuxCencContext* ctx, int size)
{
    size_t new_alloc_size;

    if (ctx->auxiliary_info_size + size > ctx->auxiliary_info_alloc_size) {
        new_alloc_size = FUNC1(ctx->auxiliary_info_size + size, ctx->auxiliary_info_alloc_size * 2);
        if (FUNC2(&ctx->auxiliary_info, new_alloc_size)) {
            return FUNC0(ENOMEM);
        }

        ctx->auxiliary_info_alloc_size = new_alloc_size;
    }

    return 0;
}