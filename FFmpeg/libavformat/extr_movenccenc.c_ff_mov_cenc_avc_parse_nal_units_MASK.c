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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 

int FUNC7(MOVMuxCencContext* ctx, AVIOContext *pb,
                                 const uint8_t *buf_in, int size)
{
    const uint8_t *p = buf_in;
    const uint8_t *end = p + size;
    const uint8_t *nal_start, *nal_end;
    int ret;

    ret = FUNC5(ctx);
    if (ret) {
        return ret;
    }

    size = 0;
    nal_start = FUNC3(p, end);
    for (;;) {
        while (nal_start < end && !*(nal_start++));
        if (nal_start == end)
            break;

        nal_end = FUNC3(nal_start, end);

        FUNC2(pb, nal_end - nal_start);
        FUNC1(pb, *nal_start);
        FUNC6(ctx, pb, nal_start + 1, nal_end - nal_start - 1);

        FUNC0(ctx, 5, nal_end - nal_start - 1);

        size += 4 + nal_end - nal_start;
        nal_start = nal_end;
    }

    ret = FUNC4(ctx);
    if (ret) {
        return ret;
    }

    return size;
}