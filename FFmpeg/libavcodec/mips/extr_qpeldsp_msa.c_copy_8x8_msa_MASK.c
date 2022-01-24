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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(const uint8_t *src, int32_t src_stride,
                         uint8_t *dst, int32_t dst_stride)
{
    uint64_t src0, src1;
    int32_t loop_cnt;

    for (loop_cnt = 4; loop_cnt--;) {
        src0 = FUNC0(src);
        src += src_stride;
        src1 = FUNC0(src);
        src += src_stride;

        FUNC1(src0, dst);
        dst += dst_stride;
        FUNC1(src1, dst);
        dst += dst_stride;
    }
}