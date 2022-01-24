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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct TYPE_4__ {int auxiliary_info_size; int /*<<< orphan*/  subsample_count; int /*<<< orphan*/ * auxiliary_info; int /*<<< orphan*/  use_subsamples; } ;
typedef  TYPE_1__ MOVMuxCencContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_1__*,int) ; 

__attribute__((used)) static int FUNC3(MOVMuxCencContext* ctx,
    uint16_t clear_bytes, uint32_t encrypted_bytes)
{
    uint8_t* p;
    int ret;

    if (!ctx->use_subsamples) {
        return 0;
    }

    ret = FUNC2(ctx, 6);
    if (ret) {
        return ret;
    }

    p = ctx->auxiliary_info + ctx->auxiliary_info_size;

    FUNC0(p, clear_bytes);
    p += sizeof(uint16_t);

    FUNC1(p, encrypted_bytes);

    ctx->auxiliary_info_size += 6;
    ctx->subsample_count++;

    return 0;
}