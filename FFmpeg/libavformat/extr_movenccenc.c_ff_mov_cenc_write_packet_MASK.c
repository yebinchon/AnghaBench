#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  MOVMuxCencContext ;
typedef  int /*<<< orphan*/  AVIOContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 

int FUNC4(MOVMuxCencContext* ctx, AVIOContext *pb,
                          const uint8_t *buf_in, int size)
{
    int ret;

    ret = FUNC2(ctx);
    if (ret) {
        return ret;
    }

    ret = FUNC0(ctx, 0, size);
    if (ret) {
        return ret;
    }

    FUNC3(ctx, pb, buf_in, size);

    ret = FUNC1(ctx);
    if (ret) {
        return ret;
    }

    return 0;
}